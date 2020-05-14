package ru.itis.kursach.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class InfoResponseDto {
    DiseaseInfoResponseDto вич;
    DiseaseInfoResponseDto артериальнаяГипертензия;
    DiseaseInfoResponseDto сахарныйДиабет;
    DiseaseInfoResponseDto гепатит;
    DiseaseInfoResponseDto психиатрия;
    DiseaseInfoResponseDto туберкулез;
    DiseaseInfoResponseDto новообразования;
}
