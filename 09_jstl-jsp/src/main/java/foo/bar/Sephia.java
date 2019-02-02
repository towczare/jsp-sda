package foo.bar;

public enum Sephia {

  NORMAL(""),
  MIN("w3-sepia-min"),
  MID("w3-sepia"),
  MAX("w3-sepia-max");

  private String cssClass;

    Sephia(String cssClass) {
        this.cssClass = cssClass;
    }

    public String getCssClass() {
        return cssClass;
    }
}
