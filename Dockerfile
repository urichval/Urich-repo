# Image Java légère
FROM eclipse-temurin:17-jre-alpine

# Dossier de travail dans le conteneur
WORKDIR /app

# Copier le JAR généré par Maven
COPY target/*.jar app.jar

# Exposer le port Spring Boot
EXPOSE 8080

# Lancer l'application
ENTRYPOINT ["java", "-jar", "app.jar"]
