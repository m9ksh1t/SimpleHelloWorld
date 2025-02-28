# Use a base image with ASP.NET runtime
FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS base

# Set the working directory inside the container
WORKDIR /app

# Copy the published files into the container
COPY output/ .

# Expose the application port (adjust if your app uses a different port)
EXPOSE 80

# Specify the entry point for the application
ENTRYPOINT ["dotnet", "MyNetApp.dll"]
