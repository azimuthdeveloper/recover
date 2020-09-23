## Recovery, and the recovery client

This is the Recovery project.

Basically it's a web app written in ASP .NET Core 3. It's generated using this template that's spoken about here: https://docs.microsoft.com/en-us/aspnet/core/security/authentication/identity-api-authorization?view=aspnetcore-3.1



The vanilla setup process for .NET Core generates an Angular client that uses oauth to identify the user and log them in. Because Angular is a Javascript client app, it seems at least logically possible to me that *any* client app implementing the oauth protocol could log in and use the baked in identity system in the given web app.

This is complicated by a few factors:

1. The behemoth authorisation/authentication function found in the Angular app which, for something that logs people in and registers them, is *literally hundreds of lines of code* and I can't work out how it works enough to implement the same thing in Flutter
2. There are 999999999999 oauth flows (authorization code, implicit, implicit with sprinkles, vegetarian meatloaf) that makes figuring out what one to use very difficult and non-intuitive
3. When the auth flow fails it's not clear what has broken and why, console messages don't give any troubleshooting information



Things of note:



* In the angular app, when the register or login endpoints are hit, the angular app actually redirects to the .net core app for the registration/login, and when it suceeds, sends a callback to the calling application *somehow*. I haven't been able to replicate this at all in the Flutter app.

