import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) {
        try {
            BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
            String line;
            String x;
            x=br.readLine();
            int lineCount = 1;

            Analisador scanner = new Analisador(br);

            while ((line = br.readLine()) != null) {
                scanner.yyreset(br);
                scanner.yylex();

                lineCount++;
            }

            br.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
