package ru.itis.kursach_backend.services.logic;

import com.github.signaflo.timeseries.model.arima.ArimaCoefficients;
import com.github.signaflo.timeseries.model.arima.ArimaOrder;
import com.github.signaflo.timeseries.model.arima.ArimaProcess;
import org.apache.commons.math3.stat.regression.SimpleRegression;
import org.apache.commons.math3.util.FastMath;
import org.springframework.stereotype.Service;

@Service
public class LogicServiceImpl implements LogicService {

    private static SimpleRegression sr = new SimpleRegression(true);

    @Override
    public Integer predict(double[][] data, double year) {
      //  ArimaOrder qr = ArimaOrder.order(1,0,1);
      //  ArimaCoefficients ac = ArimaCoefficients.builder().build();

       // System.out.println( ArimaProcess.builder().setCoefficients(ArimaCoefficients.builder().setARCoeffs(1,3,5,7).setMACoeffs(1,3,5,7).build()).build().startOver().getNext(7));


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
