package ru.itis.kursach.assemblers;

import org.springframework.hateoas.EntityModel;
import org.springframework.hateoas.server.RepresentationModelAssembler;
import org.springframework.stereotype.Component;
import ru.itis.kursach.controllers.DistrictsController;
import ru.itis.kursach.models.District;

import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.linkTo;
import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.methodOn;

@Component
public class DistrictModelAssembler implements RepresentationModelAssembler<District, EntityModel<District>> {

    @Override
    public EntityModel<District> toModel(District district) {
        return EntityModel.of(district,
                linkTo(methodOn(DistrictsController.class).allDistricts()).withSelfRel());
    }
}