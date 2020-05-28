package ru.itis.kursach.controllers;

import org.springframework.hateoas.CollectionModel;
import org.springframework.hateoas.EntityModel;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import ru.itis.kursach.assemblers.DistrictModelAssembler;
import ru.itis.kursach.models.District;
import ru.itis.kursach.services.DistrictService;

import java.util.List;
import java.util.stream.Collectors;

import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.linkTo;
import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.methodOn;

@RestController
@CrossOrigin(origins = "http://localhost:3000")
public class DistrictsController extends AbstractController {

    private final DistrictService districtService;

    private final DistrictModelAssembler districtModelAssembler;

    public DistrictsController(DistrictService districtService, DistrictModelAssembler districtModelAssembler) {
        this.districtService = districtService;
        this.districtModelAssembler = districtModelAssembler;
    }

    @GetMapping
    public ResponseEntity<CollectionModel<EntityModel<District>>> allDistricts() {

        List<EntityModel<District>> districts = districtService.getAllDistricts().stream()
                .map(districtModelAssembler::toModel)
                .collect(Collectors.toList());

        return ResponseEntity.ok(CollectionModel.of(districts,
                linkTo(methodOn(DistrictsController.class).allDistricts()).withSelfRel()));
    }
}
