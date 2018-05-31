# Visit Counter 
Example of declaration usage

## How to run it?
Follow the instructions mentioned in [hello-world-jsp example](../00_hello-world-jsp/README.md)

## Exercise
Create simulation of throwing coin using following enum:
```
package foo.bar;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Random;

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
}
```


