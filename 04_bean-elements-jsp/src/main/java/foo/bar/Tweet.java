package foo.bar;

import java.util.Objects;

/**
 * Created by tomic on 31.05.18.
 */
public class Tweet {

    private String author;
    private String content;

    public Tweet() {
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        if(content.length() >= 160) {
            this.content = content.substring(0, 160);
        } else {
            this.content = content;
        }
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Tweet tweet = (Tweet) o;
        return Objects.equals(author, tweet.author) &&
                Objects.equals(content, tweet.content);
    }

    @Override
    public int hashCode() {
        return Objects.hash(author, content);
    }
}
