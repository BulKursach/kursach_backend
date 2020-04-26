package ru.itis.kursach.forms;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.PositiveOrZero;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class DiseaseForm {

    @NotNull(message = "Disease name cannot be null")
    private String disease;

    @NotNull(message = "District name cannot be null")
    private String region;

    @PositiveOrZero
    @NotNull(message = "Disease info must have absolute number")
    private Integer absolute;

    @PositiveOrZero
    @NotNull(message = "Disease info must have relative number")
    private Integer population;

    private Integer absoluteHiv;

    private Integer populationHiv;

    private Short year;
}
