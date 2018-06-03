# Session
Example of session

## How to run it?
Follow the instructions mentioned in [hello-world-jsp example](../00_hello-world-jsp/README.md)

## Exercise
Store and present additional info from session object:
- Max Inactive Interval time for session using `getMaxInactiveInterval()` method
- Add additional information about browser type using `User-Agent` header in request
```
String browserType = request.getHeader("User-Agent");
```
- IP Address using:
```
request.getRemoteAddr()
```
- Implement GET parameter called `invalidateSession` Whenever set to true invalidate user session.