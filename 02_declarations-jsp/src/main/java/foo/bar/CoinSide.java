package foo.bar;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Random;
import java.util.stream.IntStream;

/**
 * Created by tomic on 31.05.18.
 */
public enum CoinSide {
    HEADS,
    TAILS;

    private static final List<CoinSide> VALUES = Collections.unmodifiableList(Arrays.asList(values()));
    private static final int SIZE = VALUES.size();
    private static final Random RANDOM = new Random();

    public static CoinSide flipCoin()  {
        return VALUES.get(RANDOM.nextInt(SIZE));
    }

    public static int[] drawNumbers() {
        return IntStream.generate(
                ()-> new Random().nextInt(36)).distinct().limit(6).toArray();
    }
}