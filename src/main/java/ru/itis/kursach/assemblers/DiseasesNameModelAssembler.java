package ru.itis.kursach.assemblers;

import lombok.SneakyThrows;
import org.springframework.hateoas.EntityModel;
import org.springframework.hateoas.server.RepresentationModelAssembler;
import org.springframework.stereotype.Component;
import ru.itis.kursach.controllers.InfoController;

import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.linkTo;
import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.methodOn;

@Component
public class DiseasesNameModelAssembler implements RepresentationModelAssembler<String, EntityModel<String>> {
    @SneakyThrows
    @Override
    public EntityModel<String> toModel(String entity) {
        return EntityModel.of(entity,
                linkTo(methodOn(InfoController.class).getInfo(entity)).withSelfRel());
    }
}
