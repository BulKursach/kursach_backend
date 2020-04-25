package ru.itis.kursach.services.logic;

import com.github.signaflo.timeseries.TimeSeries;
import com.github.signaflo.timeseries.Ts;
import com.github.signaflo.timeseries.forecast.Forecast;
import com.github.signaflo.timeseries.model.arima.Arima;
import com.github.signaflo.timeseries.model.arima.ArimaOrder;
import org.springframework.stereotype.Service;

@Service
public class ARIMALogicServiceImpl implements LogicService {
    @Override
    public Integer predict(double[][] data, double year) {

        for (int i = 0; i < data.length; i++) {
            if ((int) year == (int) data[i][0]) {
                return (int) data[i][1];
            }
        }
        if (data.length == 0) {
            return 0;
        }

        if (data.length == 1) {
            return (int) (data[0][1] * 0.9);
        }

        int average = 0;

        double[] valueMass = new double[data.length];
        for (int i = 0; i < data.length; i++) {
            valueMass[i] = data[i][1];
            average = average + (int) data[i][1];
        }

        average = average / data.length;
        int size = (int) year - (int) data[data.length - 1][0];

        ArimaOrder modelOrder = ArimaOrder.order(1, 1, 0);
        TimeSeries timeSeries1 = Ts.newAnnualSeries(valueMass);
        Arima model = Arima.model(timeSeries1, modelOrder);
        Forecast forecast = model.forecast(size);

        double[] value = forecast.pointEstimates().asArray();

        if (value[size - 1] > average * 3||value[size - 1] <0||value[size - 1] < average / 3.0) {
            return (int) (average * 0.9);
        }

        return (int) value[size - 1];
    }
}
