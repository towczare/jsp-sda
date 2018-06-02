package foo.bar;

import java.util.Random;

/**
 * Created by tomic on 02.06.18.
 */
public class RandomIndex {

    private static final Random RANDOM = new Random();
    private static final int MAX_INDEX = 255;

    public static int next() {
        return RANDOM.nextInt(MAX_INDEX);
    }
}
