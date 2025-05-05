import java.util.*;

public class WeatherAverage {
    public static final int MISSING = 9999;

    public static void main(String[] args) {
        String[] weatherData = {
            // Year 2023, temperature: 15°C, quality: 1
            "0043011990999992023051518004+68750+023550FM-12+038299999V0203201N00261220001CN9999999N9+00151+99999999991",
            // Year 2023, temperature: 10°C, quality: 0
            "0043011990999992023051519004+68750+023550FM-12+038299999V0203201N00261220001CN9999999N9+00101+99999999990",
            // Year 2024, temperature: 20°C, quality: 5
            "0043011990999992024051518004+68750+023550FM-12+038299999V0203201N00261220001CN9999999N9+00201+99999999995",
            // Year 2024, temperature: 18°C, quality: 4
            "0043011990999992024051518004+68750+023550FM-12+038299999V0203201N00261220001CN9999999N9+00181+99999999994",
            // Year 2025, temperature: 25°C, quality: 1
            "0043011990999992025051518004+68750+023550FM-12+038299999V0203201N00261220001CN9999999N9+00251+99999999991",
            // Year 2025, temperature: 9999 (missing)
            "0043011990999992025051518004+68750+023550FM-12+038299999V0203201N00261220001CN9999999N9+99991+99999999994"
        };

        Map<String, List<Integer>> tempMap = new HashMap<>();

        for (String line : weatherData) {
            if (line.length() < 93) continue;

            String year = line.substring(15, 19);
            int temperature;

            try {
                if (line.charAt(87) == '+')
                    temperature = Integer.parseInt(line.substring(88, 92));
                else
                    temperature = Integer.parseInt(line.substring(87, 92));
            } catch (NumberFormatException e) {
                continue;
            }

            String quality = line.substring(92, 93);

            if (temperature != MISSING && quality.matches("[01459]")) {
                tempMap.computeIfAbsent(year, k -> new ArrayList<>()).add(temperature);
            }
        }

        for (Map.Entry<String, List<Integer>> entry : tempMap.entrySet()) {
            String year = entry.getKey();
            List<Integer> temps = entry.getValue();
            int sum = 0;
            for (int t : temps) sum += t;
            int avg = sum / temps.size();
            System.out.println(year + " : " + avg);
        }
    }
}
