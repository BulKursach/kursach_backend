package ru.itis.kursach.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import ru.itis.kursach.models.District;

import java.util.List;

@Repository
public interface DistrictRepository extends JpaRepository<District, String> {

    List<District> findAll();
}
