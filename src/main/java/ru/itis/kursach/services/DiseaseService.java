package ru.itis.kursach.services;

import ru.itis.kursach.dto.DiseasesResponseDto;

public interface DiseaseService {

    DiseasesResponseDto getAllDiseaseDataByDefault(String disease, Short year);

    DiseasesResponseDto getAllDiseaseDataByDistrict(String district, String disease);

}
