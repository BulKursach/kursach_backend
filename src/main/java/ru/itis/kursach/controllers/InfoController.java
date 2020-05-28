package ru.itis.kursach.controllers;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.hateoas.CollectionModel;
import org.springframework.hateoas.EntityModel;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import ru.itis.kursach.assemblers.DiseasesNameModelAssembler;
import ru.itis.kursach.dto.DiseaseInfoResponseDto;
import ru.itis.kursach.dto.InfoResponseDto;
import ru.itis.kursach.services.DiseaseService;

import java.io.File;
import java.io.IOException;
import java.net.URISyntaxException;
import java.util.List;
import java.util.stream.Collectors;

import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.linkTo;
import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.methodOn;

@RestController
@RequestMapping("/info")
@CrossOrigin(origins = "http://5.53.125.224::3000")
public class InfoController extends AbstractController {

    private final DiseaseService diseaseService;
    private final DiseasesNameModelAssembler diseasesNameModelAssembler;

    public InfoController(DiseaseService diseaseService, DiseasesNameModelAssembler diseasesNameModelAssembler) {
        this.diseaseService = diseaseService;
        this.diseasesNameModelAssembler = diseasesNameModelAssembler;
    }

    @GetMapping
    public ResponseEntity<EntityModel<DiseaseInfoResponseDto>> getInfo(@RequestParam(required = false) String disease)
            throws URISyntaxException {
        if (disease == null) {
            disease = DEFAULT_DISEASE;
        }
        ObjectMapper mapper = new ObjectMapper();
        InfoResponseDto info;
        DiseaseInfoResponseDto diseaseInfo;
        EntityModel<DiseaseInfoResponseDto> entityModel;
        try {
            info = mapper.readValue(new File(this.getClass().getResource("/description.json").getPath()),
                    InfoResponseDto.class);
            switch (disease.toLowerCase()) {
                case "вич":
                    diseaseInfo = info.getВич();
                    break;
                case "артериальная гипертензия":
                    diseaseInfo = info.getАртериальнаяГипертензия();
                    break;
                case "гепатит":
                    diseaseInfo = info.getГепатит();
                    break;
                case "новообразования":
                    diseaseInfo = info.getНовообразования();
                    break;
                case "психиатрия":
                    diseaseInfo = info.getПсихиатрия();
                    break;
                case "сахарный диабет":
                    diseaseInfo = info.getСахарныйДиабет();
                    break;
                case "туберкулез":
                    diseaseInfo = info.getТуберкулез();
                    break;
                default:
                    throw new URISyntaxException(disease, "Такая болезнь не поддерживается");
            }
            entityModel = EntityModel.of(diseaseInfo,
                    linkTo(methodOn(InfoController.class).getInfo(disease)).withSelfRel());
        } catch (IOException e) {
            throw new IllegalArgumentException(e);
        }
        return ResponseEntity.ok(entityModel);
    }

    @GetMapping("/diseases")
    public ResponseEntity<CollectionModel<EntityModel<String>>> getDiseasesList() {

        List<EntityModel<String>> diseases = diseaseService.getAllDiseaseNames().stream()
                .map(diseasesNameModelAssembler::toModel)
                .collect(Collectors.toList());

        return ResponseEntity.ok(CollectionModel.of(diseases,
                linkTo(methodOn(InfoController.class).getDiseasesList()).withSelfRel()));
    }
}
