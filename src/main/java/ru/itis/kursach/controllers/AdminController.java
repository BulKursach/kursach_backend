package ru.itis.kursach.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import ru.itis.kursach.forms.DiseaseForm;
import ru.itis.kursach.models.Disease;
import ru.itis.kursach.models.DiseaseID;
import ru.itis.kursach.services.DiseaseService;
import ru.itis.kursach.services.DistrictService;

import javax.validation.Valid;

@Controller
@RequestMapping("/admin")
public class AdminController extends AbstractController {

    private DistrictService districtService;

    private DiseaseService diseaseService;

    public AdminController(DistrictService districtService, DiseaseService diseaseService) {

        this.districtService = districtService;
        this.diseaseService = diseaseService;
    }

    @GetMapping
    public String getAdminPanel(Model model) {

        model.addAttribute("districts", districtService.getAllDistricts());

        model.addAttribute("diseases", diseaseService.getAllDiseaseNames());

        model.addAttribute("diseaseForm", new DiseaseForm());

        return "admin";
    }

    @PostMapping
    public String processData(@Valid DiseaseForm diseaseForm, Errors errors) {

        if (errors.hasErrors()) {
            return "admin";
        }

        Disease disease = Disease.builder()
                .diseaseID(new DiseaseID(diseaseForm.getDisease(), diseaseForm.getYear(), diseaseForm.getRegion()))
                .abs(diseaseForm.getAbsolute())
                .rel(diseaseForm.getPopulation())
                .abs_child(diseaseForm.getAbsoluteHiv())
                .rel_child(diseaseForm.getPopulationHiv())
                .build();

        diseaseService.addDiseaseData(disease);

        return "redirect:/admin";
    }
}
