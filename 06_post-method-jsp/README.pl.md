# Post method

[:bulb: This file is translated version of original file available here](README.md)

Przykład zastosowania metody post w servletach JSP

## :gear: Jak to odpalić?
Podążaj za krokami opisanymi tutaj [hello-world-jsp example](../00_hello-world-jsp/README.pl.md)

## Zadanie
Rozbuduj formularz o następujące parametry:

| Name          | Data type                      | Form input type                                                       |
| ------------- |:------------------------------:| ---------------------------------------------------------------------:|
| category      | enum (ex. comedy,horror,drama) | [`<select>..</select>`](https://www.w3schools.com/tags/tag_select.asp)|
| adultContent  | boolean, true false            | [` <input type="checkbox"...`](https://www.w3schools.com/tags/att_input_checked.asp)|
| author        | String                         | [`<input type="text"...`](https://www.w3schools.com/tags/tag_input.asp)|
| minRAtting    | int (1 - 9)                    | [`<input type="radio"...`](https://www.w3schools.com/html/html_forms.asp)|
