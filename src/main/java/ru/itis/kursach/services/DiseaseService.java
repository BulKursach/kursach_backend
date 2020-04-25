package ru.itis.kursach.services;

import ru.itis.kursach.dto.DiseasesResponseDto;
import ru.itis.kursach.models.Disease;

public interface DiseaseService {

    DiseasesResponseDto getDiseaseDataByAllDistricts(String disease, Short year);

    DiseasesResponseDto getDiseaseDataByDistrict(String district, String disease);

    Short lastNotPredicted(String disease);

    void addDiseaseData(Disease disease);
}
