# JSTL

[:bulb: This file is translated version of original file available here](README.md)

Przykład użycia biblioteki JSTL

## :gear: Jak to odpalić?
Podążaj za krokami opisanymi tutaj [hello-world-jsp example](../00_hello-world-jsp/README.pl.md)

## Zadanie

Był Twitter dla biedaków, tym razem spróbujemy zaimplementować Instagrama dla biedaków o nazwie `Potemgram`

### 1. Zaimplementuj brakującą pętlę JSTL w `my-images.jsp` aby zaprezentować rządaną ilość obrazków zamiast 1
### 2. Zaimplementuj różne efekty na obrazkach dodając do formularza dodatkowe opcje:
:bulb: Hint! Proponuję w tym celu zdefiniować listę wszystkich efektów jako enum, którego będziemy mogli użyć po stronie formularza jako zwykły htmlowy select
- **Opacity**:
  - Normal
  - w3-opacity-min
  - w3-opacity
  - w3-opacity-max 
- **Grayscale**:
  - Normal
  - w3-grayscale-min
  - w3-grayscale
  - w3-grayscale-max 
- **Sepia**:
  - Normal
  - w3-sepia-min
  - w3-sepia
  - w3-sepia-max
- **Rounded**:
  - w3-round-small
  - w3-round
  - w3-round-large
  - w3-round-xlarge
  - w3-round-xxlarge
  - w3-circle
Poniżej przykład zastosowania różnych efektów, które zostaną nałożone na twoje rządane obrazki:
```
<img src="https://picsum.photos/200/300?image=<c:out value='${index}'/>" class="w3-circle w3-opacity-min w3-grayscale"/>
```
### 3. Zaimplementuj dodatkowe efekty animacji, jak te poniżej do swoich obrazkówL
```
class="w3-animate-top"
```
aby sprawdzić więcej efektów sprawdź poniższą stronę
```
https://www.w3schools.com/w3css/w3css_animate.asp
```
:bulb: Użyj tagów JSTL:
* `c:choose`
* `c:when`

Przykłady użycia tagów JSTL:

[https://www.tutorialspoint.com/jsp/jstl_core_choose_tag.htm](https://www.tutorialspoint.com/jsp/jstl_core_choose_tag.htm)