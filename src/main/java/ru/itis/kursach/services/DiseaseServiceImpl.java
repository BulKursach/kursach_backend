package ru.itis.kursach.services;

import org.springframework.stereotype.Service;
import ru.itis.kursach.dto.DiseasesResponseDto;
import ru.itis.kursach.models.Disease;
import ru.itis.kursach.repositories.DiseaseRepository;
import ru.itis.kursach.services.logic.LogicService;

import java.util.List;

@Service
public class DiseaseServiceImpl implements DiseaseService {

    private final DiseaseRepository diseaseRepository;

    private final LogicService logicService;

    public DiseaseServiceImpl(DiseaseRepository diseaseRepository, LogicService logicService) {
        this.diseaseRepository = diseaseRepository;
        this.logicService = logicService;
    }

    @Override
    public List<String> getAllDiseaseNames() {

        return diseaseRepository.findAllDiseaseNames();
    }

    @Override
    public DiseasesResponseDto getDiseaseDataByAllDistricts(String disease, Short year) {

        return DiseasesResponseDto.from(
                diseaseRepository.findAllByDiseaseID_DiseaseAndDiseaseID_Year(disease, year),
                diseaseRepository.findAllUnpredictedYears(disease), diseaseRepository.findAllPredictedYears(disease));
    }

    @Override
    public DiseasesResponseDto getDiseaseDataByDistrict(String district, String disease) {

        List<Disease> data = diseaseRepository.findAllByDiseaseID_DistrictAndDiseaseID_Disease(district, disease);

        short year = (short) (lastNotPredicted(disease) + 1);

        if (disease.equals("ВИЧ")) {
            diseaseRepository.savePredictedDataWithChildes(disease, year, district,
                    logicService.predict(Disease.getAbsData(data), year),
                    logicService.predict(Disease.getRelData(data), year),
                    logicService.predict(Disease.getAbsChildData(data), year),
                    logicService.predict(Disease.getRelChildData(data), year));
        } else {
            diseaseRepository.savePredictedData(disease, year, district,
                    logicService.predict(Disease.getAbsData(data), year),
                    logicService.predict(Disease.getRelData(data), year));
        }

        return DiseasesResponseDto.from(
                diseaseRepository.findAllByDiseaseID_DistrictAndDiseaseID_Disease(district, disease),
                diseaseRepository.findAllUnpredictedYears(district, disease),
                diseaseRepository.findAllPredictedYears(district, disease)
        );
    }

    public Short lastNotPredicted(String disease) {

        List<Short> years = diseaseRepository.findAllUnpredictedYears(disease);
        return years.get(0);
    }

    @Override
    public void addDiseaseData(Disease disease) {

        diseaseRepository.save(disease);
    }
}
