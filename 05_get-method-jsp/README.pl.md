# Get method

[:bulb: This file is translated version of original file available here](README.md)

Przykład zastosowania metody get w servletach JSP

## :gear: Jak to odpalić?
Podążaj za krokami opisanymi tutaj [hello-world-jsp example](../00_hello-world-jsp/README.pl.md)

## Pobaw się parametrami zapytania GET

Dodaj następujące parametry do adresu url w pasku przeglądarki
```
?query=java&page=3&sort=desc
```

## Zadanie
ROzszerzmy istniejące parametry i zaprezentujmy je na stronie szczegółów:
- kategoria [String]
- tylkoDlaDoroslych [true, false]
- uwzgledniajReklamy [true, false]
- autor [String]
- minimalnaOcena [numery od 1 do 9, załóżmy, że 0 to domyślna wartość]