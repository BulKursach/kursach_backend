package ru.itis.kursach_backend.services;

import ru.itis.kursach_backend.dto.DiseasesResponseDto;

public interface DiseaseService {

    DiseasesResponseDto getAllDiseaseDataByDefault(String disease, Short year);

    DiseasesResponseDto getAllDiseaseDataByDistrict(String district, String disease);

}
