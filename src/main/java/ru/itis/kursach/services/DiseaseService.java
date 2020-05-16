package ru.itis.kursach.services;

import ru.itis.kursach.dto.DiseasesResponseDto;
import ru.itis.kursach.models.Disease;

import java.util.List;

public interface DiseaseService {

    List<String> getAllDiseaseNames();

    DiseasesResponseDto getDiseaseDataByAllDistricts(String disease, Short year);

    DiseasesResponseDto getDiseaseDataByDistrict(String district, String disease, Short year);

    Short lastNotPredicted(String disease);

    void addDiseaseData(Disease disease);
}
