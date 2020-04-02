package ru.itis.kursach_backend.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.itis.kursach_backend.models.District;
import ru.itis.kursach_backend.repositories.DistrictRepository;

import java.util.List;

@Service
public class DistrictServiceImpl implements DistrictService {

    @Autowired
    private DistrictRepository districtRepository;

    @Override
    public List<District> getAllDistricts() {
        System.out.println(districtRepository.findAll());
        return districtRepository.findAll();
    }
}
