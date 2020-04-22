package ru.itis.kursach.services;

import ru.itis.kursach.dto.DiseasesResponseDto;

public interface DiseaseService {

    DiseasesResponseDto getDiseaseDataByAllDistricts(String disease, Short year);

    DiseasesResponseDto getDiseaseDataByDistrict(String district, String disease);

    Short lastNotPredicted(String disease);
}
