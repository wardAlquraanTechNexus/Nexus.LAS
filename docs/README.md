 # Nexus.LAS
Nexus Legal Assistance System(LAS)
# Legal Assistance System

 nvm install lts  --install latest stable version from node
 nvm list
 nvm use 18
 
dotnet ef migrations add "Initial Migration" --startup-project "C:\Dev\Nexus.LAS\Nexus.LAS.WebApi" --project "C:\Dev\Nexus.LAS\Nexus.LAS.Identity" --context NexusLASIdentityDbContext

dotnet ef database update --startup-project "C:\Dev\Nexus.LAS\Nexus.LAS.WebApi" --project "C:\Dev\Nexus.LAS\Nexus.LAS.Identity" --context NexusLASIdentityDbContext


dotnet ef migrations add "Initial Cleansing" --startup-project "C:\Dev\Nexus.LAS\Nexus.LAS.WebApi" --project "C:\Dev\Nexus.LAS\Nexus.LAS.Persistence" --context NexusLASDbContext

dotnet ef database update --startup-project "C:\Dev\Nexus.LAS\Nexus.LAS.WebApi" --project "C:\Dev\Nexus.LAS\Nexus.LAS.Persistence" --context NexusLASDbContext


Data folder
This will contain the database context
Models folder
This will contain the models classes (This is the representation of the data in the database)
Controllers folder
This will contain the controllers (This handles the requests and responses from the client)
DTOs folder
This will contain the Data Transfer Objects (This handles the data that is sent to the client)
Services folder
This will contain the services (This handles the business logic)
Repositories folder
This will contain the repositories (This handles the data access)

*******************************
As we can see API, application, domain and infra project inside one solution.

Application layer contains all business logics and operation.

Domain layer contains domain model classes for entity.

Infrastructure Persistence(Data) layer contains repository and communicate with database.

Clean Architecture | CQRS | Mediator | AutoMapper
FluentValidation

Domain or Core
Application(UseCases / Services / Features)
*******************************

So the flow is as follows:

The Controller class handles the requests and responses from the client
The Controller class communicates with the Service class
The Service class communicates with the Repository class
The Repository class communicates with the Database


Example in a convention repository pattern having PlayerRepository, BookRepository, StudentRepository and their Interfaces we will have to inject all of them in the Program.cs file and then use them in the main method. But with the help of Unit of Work, we can inject only the Unit of Work in the Program.cs file and then use the repositories in the main method

Steps to Deploy Angular App On-Premise

Publish Web API project


Build the Angular App for Production
ng build --configuration production
Output location: C:\Dev\Nexus.LAS.Frontend\dist\nexus.las then copy contents of browser
