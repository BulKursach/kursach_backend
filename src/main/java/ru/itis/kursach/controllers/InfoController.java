package ru.itis.kursach.controllers;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.hateoas.EntityModel;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import ru.itis.kursach.dto.DiseaseInfoResponseDto;
import ru.itis.kursach.dto.InfoResponseDto;

import java.io.File;
import java.io.IOException;
import java.net.URISyntaxException;

import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.linkTo;
import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.methodOn;

@RestController
@RequestMapping("/info")
public class InfoController extends AbstractController {

    @GetMapping("/{disease}")
    public ResponseEntity<EntityModel<DiseaseInfoResponseDto>> getInfo(@PathVariable(required = false) String disease)
            throws URISyntaxException {
        if (disease == null) {
            disease = DEFAULT_DISEASE;
        }
        ObjectMapper mapper = new ObjectMapper();
        InfoResponseDto info;
        DiseaseInfoResponseDto diseaseInfo;
        EntityModel<DiseaseInfoResponseDto> entityModel;
        try {
            info = mapper.readValue(new File("src/main/resources/description.json"),
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
                case "психические заболевания":
                    diseaseInfo = info.getПсихическиеЗаболевания();
                    break;
                case "сахарный диабет":
                    diseaseInfo = info.getСахарныйДиабет();
                    break;
                case "туберкулёз":
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

}
