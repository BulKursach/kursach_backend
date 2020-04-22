package ru.itis.kursach.controllers;

import org.springframework.hateoas.EntityModel;
import org.springframework.hateoas.IanaLinkRelations;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import ru.itis.kursach.assemblers.DiseaseModelAssembler;
import ru.itis.kursach.assemblers.DistrictModelAssembler;
import ru.itis.kursach.dto.DiseasesResponseDto;
import ru.itis.kursach.services.DiseaseService;
import ru.itis.kursach.services.DistrictService;

import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.linkTo;
import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.methodOn;

@RestController
@RequestMapping("/districts")
public class DiseaseByDistrictsController extends AbstractController {


    private final DiseaseService diseaseService;

    private final DiseaseModelAssembler diseaseModelAssembler;

    public DiseaseByDistrictsController(DiseaseService diseaseService, DistrictService districtService,
                                        DistrictModelAssembler districtModelAssembler, DiseaseModelAssembler diseaseModelAssembler) {
        this.diseaseService = diseaseService;
        this.diseaseModelAssembler = diseaseModelAssembler;
    }


    @GetMapping("/all")
    public ResponseEntity<EntityModel<DiseasesResponseDto>> getAllDiseaseData(
            @RequestParam(required = false, defaultValue = DEFAULT_DISEASE) String disease,
            @RequestParam(required = false) Short year) {

        if (year == null) {
            year = diseaseService.lastNotPredicted(disease);
        }

        EntityModel<DiseasesResponseDto> entityModel =
                diseaseModelAssembler.toModel(diseaseService.getDiseaseDataByAllDistricts(disease, year));

        return ResponseEntity
                .created(entityModel.getRequiredLink(IanaLinkRelations.SELF).toUri())
                .body(entityModel);
    }


    @GetMapping
    public ResponseEntity<EntityModel<DiseasesResponseDto>> getDiseaseDataByDistrict(
            @RequestParam String district,
            @RequestParam(required = false, defaultValue = DEFAULT_DISEASE) String disease) {

        EntityModel<DiseasesResponseDto> diseases = EntityModel.of(
                diseaseService.getDiseaseDataByDistrict(district, disease),
                linkTo(methodOn(DiseaseByDistrictsController.class)
                        .getDiseaseDataByDistrict(district, disease)).withSelfRel());

        return ResponseEntity.ok(diseases);
    }

}
