# Visit Counter

[:bulb: This file is translated version of original file available here](README.md)

Przykład użycia deklaracji w servlecie JSP

## :gear: Jak to odpalić?
Podążaj za krokami opisanymi tutaj [hello-world-jsp example](../00_hello-world-jsp/README.pl.md)

## Zadanie
Spróbujemy zbudować prosty symulator rzucania monetą
Proponuję aby w tym celu przygotować następującego enuma:
```
package foo.bar;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Random;

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
2. Twoje zadanie polega na wyświetleniu jednej z wartości zwracanej przez metodę `flipCoin` przy każdorazowym odświeżeniu strony.


