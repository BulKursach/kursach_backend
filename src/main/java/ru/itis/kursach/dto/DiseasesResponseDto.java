package ru.itis.kursach.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import ru.itis.kursach.models.Disease;

import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class DiseasesResponseDto {
    String name;
    String district; // CARE: only useful if requested by certain district!
    List<Short> yearsNotPredicted;
    List<Short> yearsPredicted;
    List<Disease> data;

    public static DiseasesResponseDto from(List<Disease> diseases,
                                           List<Short> yearsNotPredicted, List<Short> yearsPredicted) {
        return DiseasesResponseDto.builder()
                .name(diseases.get(0).getDiseaseID().getDisease())
                .district(diseases.get(0).getDiseaseID().getDistrict())
                .data(diseases)
                .yearsNotPredicted(yearsNotPredicted)
                .yearsPredicted(yearsPredicted)
                .build();
    }
}
