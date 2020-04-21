package ru.itis.kursach.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import ru.itis.kursach.models.Disease;
import ru.itis.kursach.models.DiseaseID;

import java.util.List;

@Repository
public interface DiseaseRepository extends JpaRepository<Disease, DiseaseID> {
    @Query(
            value = "SELECT DISTINCT year FROM diseases " +
                    "    WHERE predicted = false AND disease = :disease " +
                    "    ORDER BY year DESC;",
            nativeQuery = true
    )
    List<Short> findAllUnpredictedYears(String disease);

    @Query(
            value = "SELECT DISTINCT year FROM diseases " +
                    "    WHERE predicted = false AND disease = :disease AND district = :district " +
                    "    ORDER BY year DESC;",
            nativeQuery = true
    )
    List<Short> findAllUnpredictedYears(String district, String disease);

    @Query(
            value = "SELECT DISTINCT year FROM diseases " +
                    "    WHERE predicted = true AND disease = :disease " +
                    "    ORDER BY year DESC;",
            nativeQuery = true
    )
    List<Short> findAllPredictedYears(String disease);

    @Query(
            value = "SELECT DISTINCT year FROM diseases " +
                    "    WHERE predicted = true AND disease = :disease AND district = :district " +
                    "    ORDER BY year DESC;",
            nativeQuery = true
    )
    List<Short> findAllPredictedYears(String district, String disease);

    @Modifying
    @Transactional
    @Query(
            value = "INSERT INTO diseases (disease, year, district, abs, rel, abs_child, rel_child, predicted)" +
                    "   VALUES (:disease, :year, :district, :absPredicted, :relPredicted, NULL, NULL, true)" +
                    "   ON CONFLICT (disease, year, district) DO UPDATE SET" +
                    "       abs = :absPredicted," +
                    "       rel = :relPredicted ;",
            nativeQuery = true
    )
    void savePredictedData(String disease, Short year, String district,
                           @Param("absPredicted") Integer absPredicted, @Param("relPredicted") Integer relPredicted);

    @Modifying
    @Transactional
    @Query(
            value = "INSERT INTO diseases (disease, year, district, abs, rel, abs_child, rel_child, predicted)" +
                    "   VALUES (:disease, :year, :district, :absPredicted, :relPredicted, :absChild, :relChild, true)" +
                    "   ON CONFLICT (disease, year, district) DO UPDATE SET" +
                    "       abs = :absPredicted," +
                    "       rel = :relPredicted," +
                    "       abs_child = :absChild," +
                    "       rel_child = :relChild ;",
            nativeQuery = true
    )
    void savePredictedDataWithChildes(String disease, Short year, String district,
                                      @Param("absPredicted") Integer absPredicted, @Param("relPredicted") Integer relPredicted,
                                      @Param("absChild") Integer absChild, @Param("relChild") Integer relChild);

    List<Disease> findAllByDiseaseID_DiseaseAndDiseaseID_Year(String disease, Short year);

    List<Disease> findAllByDiseaseID_DistrictAndDiseaseID_Disease(String district, String disease);
}
