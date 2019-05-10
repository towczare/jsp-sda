# Session

[:bulb: This file is translated version of original file available here](README.md)

Przykład użycia sesji w servlecie JSP

## :gear: Jak to odpalić?
Podążaj za krokami opisanymi tutaj [hello-world-jsp example](../00_hello-world-jsp/README.pl.md)

## Zadanie
Przechowaj i zaprezentuj dodatkowe informacje z sesyjnego obiektu:
- Maksymalny czas nieaktywności dla sesji przy użyciu metody `getMaxInactiveInterval()`
- Dodaj dodatkowe iformacje o silniku przeglądarki używając w tym celu nagłówka `User-Agent` w swoim rządaniu http
```
String browserType = request.getHeader("User-Agent");
```
- Adres IP serwera
```
request.getRemoteAddr()
```
- Zaimplemetuj parametr `GET` o nazwie `invalidateSession` Jeżeli zostanie usawiony na wartość `true` sesja powinna zostać zniszczona
