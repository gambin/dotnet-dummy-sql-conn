# Dummy App - Testing Database Connection
If you need to make a simple test connecting a .NetCore 8 App with a remote database and check connectivity + IIS setup for a WebAPI, you're in the right place!


## Setup your database and table
````
dotnet ef migrations add InitialCreate
dotnet ef database update
````

## Setup your database and table "hand made edition"
run `CustomerApi\db_script.sql` on your db-server

## Package this project using
Publish
````
dotnet publish --configuration Release --output ./publish
````

Prefer to build & run locally? No worries!
````
dotnet build
dotnet run
````

## Setup your WebServer (Win2k22)
- Enable IIS on Server Manager  and addition features enabling Web Server > Application Development > .NET Extensibility 4.8 (required for running .NET Core apps on IIS).
- Install netcore 8 (bundle Installer)[https://dotnet.microsoft.com/permalink/dotnetcore-current-windows-runtime-bundle-installer]
- Setup your database alias using `cliconfg` + enabling TCP/IP
- Enable TCP/IP communication on Database side using SQL Server Configuration Manager
- Create an IIS Web Site + Custom Application Pool
- Setup App Pool to run under a domain account that has access to wwwroot files + SQL Server Database
- Also set the .NET CLR Version to No Managed Code on your new custom App Pool
- `iisreset` and be happy!