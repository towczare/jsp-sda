# Page Elements

[:bulb: Jest też dostępna polska wersja tego pliku tutaj](README.pl.md)

Example of page elements usage

## :gear: How to run it?
Follow the instructions mentioned in [hello-world-jsp example](../00_hello-world-jsp/README.md)

## Exercise
Create random quote generator using include jsp action tag. 
After each refresh we want to see random quote to appear in random color box.
Example:
```
|"We lie best when we lie to ourselves."        |
| - Stephen King                                |
|           style="background-color:#A1D303"    |
|_______________________________________________|
```
Some tips:
:bulb: To generate hashcolor value you can use following code:
```
// create a big random number - maximum is ffffff (hex) = 16777215 (dez)
int nextInt = RANDOM.nextInt(256*256*256);

// format it as hexadecimal string (with hashtag and leading zeros)
String.format("#%06x", nextInt);
```
:bulb: Ss source for quote, you can you enum storing some of quotes in following format:
```
enum Quote {
    S_KING_ABOUT_LYING("We lie best when we lie to ourselves.", "Stephen King"),
    ...
}
```
use similar random method you implemented in previous exercise.