package ru.itis.kursach.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import ru.itis.kursach.models.District;
import ru.itis.kursach.services.DistrictServiceImpl;

import java.util.List;

@Controller
public class AdminController extends AbstractController {

    @Autowired
    private DistrictServiceImpl districtServiceImpl;

    @GetMapping("/admin")
    public String admin(Model model) {
        List<District> districts = districtServiceImpl.getAllDistricts();
        model.addAttribute("districts", districts);
        return "admin";
    }
}
