# JSP Servlets Examples

[This file is translated version of original file available here](README.md)

[![CodeFactor](https://www.codefactor.io/repository/github/towczare/jsp-examples/badge)](https://www.codefactor.io/repository/github/towczare/jsp-examples)

## Włączamy manager Tomcat

1. Edytuj ten plik:
```
TOMCAT\apache-tomcat-9.0.8\conf\tomcat-users.xml
```
2. Dodaj następującą sekcję:
```
<role rolename="manager-gui"/>
<user username="tomcat" password="tomcat" roles="tomcat,manager-gui,manager-script"/>
```
3. Uruchom Tomcata przy użyciu `startup.sh` lub `startup.bat`
4. Zweryfikuj, że manager jest dostępny `http://localhost:8080/manager/html`
5. Zostaniesz poproszony o hasło któe podałeś w konfiguracji, domyślne `tomcat/tomcat`
6. Powinieneś zobaczyć okno podobne do poniższego:
![images//tomcat_manager.png](images//tomcat_manager.png)

## Konfiguracja ustawień mavena
1. Wklej poniższą treść do pliku `settings.xml` zlokalizowanego w folderze `Users/USERNAME/.m2` (`~/.m2` użytkownicy linuxa lub maca)
```
<?xml version="1.0" encoding="UTF-8"?>
<settings xmlns="http://maven.apache.org/SETTINGS/1.0.0"
          xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
          xsi:schemaLocation="http://maven.apache.org/SETTINGS/1.0.0 http://maven.apache.org/xsd/settings-1.0.0.xsd">
 
 
<servers>  
    <server>
       <id>TOMCAT8</id>
       <username>tomcat</username>
       <password>tomcat</password>
    </server>
</servers> 
</settings>
```


## Lista przykładów
0. [Simple hello-world-jsp-servlet](00_hello-world-jsp/README.md)
1. [Simple expressions-jsp-servlet](01_expressions-jsp/README.md)
2. [Simple declarations-jsp-servlet](02_declarations-jsp/README.md)
3. [Simple page-elements-jsp-servlet](03_page-elements-jsp/README.md)
4. [Simple bean-elements-jsp-servlet](04_bean-elements-jsp/README.md)
5. [Simple get-params-jsp-servlet](05_get-method-jsp/README.md)
6. [Simple post-params-jsp-servlet](06_post-method-jsp/README.md)
7. [Simple cookie-jsp-servlet](07_cookie-jsp/README.md)
8. [Simple session-jsp-servlet](08_session-jsp/README.md)
9. [Simple jstl-jsp-servlet](09_jstl-jsp/README.md)
