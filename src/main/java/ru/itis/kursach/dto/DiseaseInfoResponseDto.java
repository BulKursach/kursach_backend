package ru.itis.kursach.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class DiseaseInfoResponseDto {
    String этиология;
    String определение;
    String путиПередачи;
    String механизм;
    String симптомы;
}
