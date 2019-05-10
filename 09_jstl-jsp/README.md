# JSTL

[:bulb: Jest też dostępna polska wersja tego pliku tutaj](README.pl.md)

Example of JSTL

## :gear: How to run it?
Follow the instructions mentioned in [hello-world-jsp example](../00_hello-world-jsp/README.md)

## Exercise

Once we did Twitter clone, this time we try to implement Instagram clone called `Potemgram`

### 1. Implement missing JSTL loop in `my-images.jsp` to present requested number of images instead 1
### 2. Implement different image effects by providing to form some additional options:
Hint! `Use enums to define possible values for each effect` and use JSTL tags to display multiple options in select input:
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
Here is example of multiple effects applied to your requested pictures:
```
<img src="https://picsum.photos/200/300?image=<c:out value='${index}'/>" class="w3-circle w3-opacity-min w3-grayscale"/>
```
### 3. Implement additional animation effect for images like this one: 
```
class="w3-animate-top"
```
for more effects look here:
```
https://www.w3schools.com/w3css/w3css_animate.asp
```
:bulb: Use JSTL tag:
* `c:choose`
* `c:when`

:bulb: More you can find here:
[https://www.tutorialspoint.com/jsp/jstl_core_choose_tag.htm](https://www.tutorialspoint.com/jsp/jstl_core_choose_tag.htm)
