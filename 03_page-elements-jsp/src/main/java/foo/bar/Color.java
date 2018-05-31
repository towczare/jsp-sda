package foo.bar;

import java.util.Random;

/**
 * Created by tomic on 31.05.18.
 */
public class Color {

    private static Random RANDOM = new Random();

    public static String getRandomColorHashCode() {
        // create a big random number - maximum is ffffff (hex) = 16777215 (dez)
        int nextInt = RANDOM.nextInt(256*256*256);

        // format it as hexadecimal string (with hashtag and leading zeros)
        return String.format("#%06x", nextInt);
    }
}
