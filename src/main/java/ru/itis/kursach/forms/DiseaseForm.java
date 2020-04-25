package ru.itis.kursach.forms;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class DiseaseForm {

    private String disease;

    private String region;

    private Integer absolute;

    private Integer population;

    private Integer absoluteHiv;

    private Integer populationHiv;

    private Short year;
}
