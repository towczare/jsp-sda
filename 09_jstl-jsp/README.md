# JSTL
Example of JSTL

## How to run it?
Follow the instructions mentioned in [hello-world-jsp example](../00_hello-world-jsp/README.md)

## Exercise
Implement different image effects by providing to form some additional options:
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
  