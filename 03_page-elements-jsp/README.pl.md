# Page Elements

[:bulb: This file is translated version of original file available here](README.md)

Przykład zastosowania elementów stron servletów JSP

## :gear: Jak to odpalić?
Podążaj za krokami opisanymi tutaj [hello-world-jsp example](../00_hello-world-jsp/README.pl.md)

## Zadanie
Stwórz losowy generator cytatów używając w tym celu tagu akcji jsp.
Przy każdym odświeżeniu strony, chcielibyśmy widzieć losowy cytat prezentowany na stronie w boksie o losowym kolorze tła.

Przykład:
```
|"We lie best when we lie to ourselves."        |
| - Stephen King                                |
|           style="background-color:#A1D303"    |
|_______________________________________________|
```
Kilka rad:

:bulb: Aby wygenerować kolor jako wartośc hash możesz użyć poniższego kodu:
```
// tworzy duży numer gdzie maksymalna wartość to `ffffff` (w zapisie szestanstkowym) czyli 16777215 (w dziesiętnym) czyli biały niczym Vizir w kolorze
int nextInt = RANDOM.nextInt(256*256*256);

// taką wartość można sfortmatować do zapisu szestnastkowego (jako hashtag i zera wiądące z przodu)
String.format("#%06x", nextInt);
```
:bulb: Jako źródło swoich cytatów, możesz użyć enuma, przechowującego różne wartości, podobnie jak zrobiliśmy w poprzednim przykładzie z monetą:
```
enum Quote {
    S_KING_ABOUT_LYING("We lie best when we lie to ourselves.", "Stephen King"),
    ...
}
```
śmiało użyj podobnego mechanizmu do losowania cytatu jak w poprzednim ćwiczeniu