package ru.itis.kursach_backend.services.logic;

import org.apache.commons.math3.stat.regression.SimpleRegression;
import org.springframework.stereotype.Service;

@Service
public class LogicServiceImpl implements LogicService {

    private static SimpleRegression sr = new SimpleRegression(true);

    @Override
    public Integer predict(double[][] data, double year) {
        sr.addData(data);
        return (int) sr.predict(year);
    }
}
