package foo.bar;

public enum Category {
    HORROR(true),
    COMEDY(false),
    DRAMA(false),
    DOCUMENT(false),
    SCFI(false),
    THRILLER(true);

    private boolean adult;

    Category(boolean adult) {
        this.adult = adult;
    }

    public boolean isAdult() {
        return adult;
    }
}
