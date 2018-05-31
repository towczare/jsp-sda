package foo.bar;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Random;

/**
 * Created by tomic on 31.05.18.
 */
public enum Quote {
    S_KING_ABOUT_LYING("We lie best when we lie to ourselves.", "Stephen King"),
    W_DISNEY_ABOUT_DREAMING("If you can dream it, you can do it.", "Walt Disney"),
    J_BURROUGHS_ABOUT_DOING("If you think you can do it, you can", "John Burroughs"),
    A_EINSTEIN_ABOUT_MEMORIZING("Never memorize something that you can look up.", "Albert Einstein"),
    C_SAGAN_ABOUT_HIIDEN_KNOWLEDGE("Somewhere, something incredible is waiting to be known.", "Carl Sagan");

    private static final List<Quote> VALUES = Collections.unmodifiableList(Arrays.asList(values()));
    private static final int SIZE = VALUES.size();
    private static final Random RANDOM = new Random();
    private String text;
    private String author;

    Quote(String text, String author) {
        this.text = text;
        this.author = author;
    }

    public static Quote drawQuote()  {
        return VALUES.get(RANDOM.nextInt(SIZE));
    }

    public String getText() {
        return text;
    }

    public String getAuthor() {
        return author;
    }
}
