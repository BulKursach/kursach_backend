package ru.itis.kursach_backend.services.logic;

import org.apache.commons.math3.stat.regression.SimpleRegression;
import org.apache.commons.math3.util.FastMath;
import org.springframework.stereotype.Service;

@Service
public class LogicServiceImpl implements LogicService {

    private static SimpleRegression sr = new SimpleRegression(true);

    @Override
    public Integer predict(double[][] data, double year) {
        sr.addData(data);
        int k = (int) sr.predict(year);
        int n = data.length-1;
        if(FastMath.abs(k-data[n][1])<data[n][1]) {
            return k;
        }else {
            return (int) (data[n][1]*(data[n][1]/data[n-1][1]));
        }
    }
}
