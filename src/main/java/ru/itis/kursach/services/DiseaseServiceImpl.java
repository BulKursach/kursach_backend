package ru.itis.kursach.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.itis.kursach.dto.DiseasesResponseDto;
import ru.itis.kursach.models.Disease;
import ru.itis.kursach.repositories.DiseaseRepository;
import ru.itis.kursach.services.logic.LogicService;

import java.util.List;

@Service
public class DiseaseServiceImpl implements DiseaseService {

    private static final String DEFAULT_DISEASE = "ВИЧ";

    private static final String DEFAULT_REGION = "российская федерация";

    @Autowired
    private DiseaseRepository diseaseRepository;

    @Autowired
    private LogicService logicService;

    @Override
    public DiseasesResponseDto getAllDiseaseDataByDefault(String disease, Short year) {
        if (disease == null) {
            disease = DEFAULT_DISEASE;
        }
        if (year == null) {
            year = lastNotPredicted(disease);
        }
        return DiseasesResponseDto.from(
                diseaseRepository.findAllByDiseaseID_DiseaseAndDiseaseID_Year(disease, year),
                diseaseRepository.findAllUnpredictedYears(disease), diseaseRepository.findAllPredictedYears(disease));
    }

    @Override
    public DiseasesResponseDto getAllDiseaseDataByDistrict(String district, String disease) {
        if (disease == null) {
            disease = DEFAULT_DISEASE;
        }

        List<Disease> data = diseaseRepository.findAllByDiseaseID_DistrictAndDiseaseID_Disease(district, disease);

        short year = (short) (lastNotPredicted(disease) + 1);

        if (disease.equals(DEFAULT_DISEASE)) {
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

    private Short lastNotPredicted(String disease) {
        List<Short> years = diseaseRepository.findAllUnpredictedYears(disease);
        return years.get(0);
    }
}
