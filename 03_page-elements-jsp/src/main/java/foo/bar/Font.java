package foo.bar;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Random;

/**
 * Created by tomic on 31.05.18.
 */
public enum Font {
    COMIC_SANS("Comic Sans MS, cursive, sans-serif"),
    LUCIDA_CONSOLE("Lucida Sans Unicode, Lucida Grande, sans-serif"),
    IMPACT_CHARCOAL("Impact, Charcoal, sans-serif");

    private static final List<Font> VALUES = Collections.unmodifiableList(Arrays.asList(values()));
    private static final int SIZE = VALUES.size();
    private static final Random RANDOM = new Random();
    private String style;


    Font(String style) {
       this.style = style;
    }

    public static Font drawFont()  {
        return VALUES.get(RANDOM.nextInt(SIZE));
    }

    public String getStyle() {
        return style;
    }
}
