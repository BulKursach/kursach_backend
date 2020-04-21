package ru.itis.kursach_backend.models;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;
import java.util.List;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Table(name = "diseases")
public class Disease {
    @EmbeddedId
    private DiseaseID diseaseID;

    private Integer abs;

    private Integer rel;

    private Integer abs_child;

    private Integer rel_child;

    private Boolean predicted;

    public static double[][] getAbsData(List<Disease> diseases) {
        double[][] res = new double[diseases.size()][];
        for (int i = 0; i < diseases.size(); i++) {
            Disease disease = diseases.get(i);
            res[i] = new double[]{disease.getDiseaseID().getYear(), disease.getAbs()};
        }
        return res;
    }

    public static double[][] getRelData(List<Disease> diseases) {
        double[][] res = new double[diseases.size()][];
        for (int i = 0; i < diseases.size(); i++) {
            Disease disease = diseases.get(i);
            res[i] = new double[]{disease.getDiseaseID().getYear(), disease.getRel()};
        }
        return res;
    }

    public static double[][] getAbsChildData(List<Disease> diseases) {
        double[][] res = new double[diseases.size()][];
        for (int i = 0; i < diseases.size(); i++) {
            Disease disease = diseases.get(i);
            res[i] = new double[]{disease.getDiseaseID().getYear(), disease.getAbs_child()};
        }
        return res;
    }

    public static double[][] getRelChildData(List<Disease> diseases) {
        double[][] res = new double[diseases.size()][];
        for (int i = 0; i < diseases.size(); i++) {
            Disease disease = diseases.get(i);
            res[i] = new double[]{disease.getDiseaseID().getYear(), disease.getRel_child()};
        }
        return res;
    }

    public Boolean isPredicted() {
        return predicted;
    }
}
