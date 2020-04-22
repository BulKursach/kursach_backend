package ru.itis.kursach.assemblers;

import org.springframework.hateoas.EntityModel;
import org.springframework.hateoas.server.RepresentationModelAssembler;
import org.springframework.stereotype.Component;
import ru.itis.kursach.controllers.DiseaseByDistrictsController;
import ru.itis.kursach.dto.DiseasesResponseDto;

import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.linkTo;
import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.methodOn;

@Component
public class DiseaseModelAssembler implements RepresentationModelAssembler<DiseasesResponseDto,
        EntityModel<DiseasesResponseDto>> {

    @Override
    public EntityModel<DiseasesResponseDto> toModel(DiseasesResponseDto diseasesResponseDto) {
        return EntityModel.of(diseasesResponseDto,
                linkTo(methodOn(DiseaseByDistrictsController.class)
                        .getDiseaseDataByDistrict(
                                diseasesResponseDto.getDistrict(),
                                diseasesResponseDto.getName())).withSelfRel());
    }
}
