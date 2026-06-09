# Image de base Java
FROM eclipse-temurin:17-jre

# Dossier de travail dans le conteneur
WORKDIR /app

# Copie du JAR généré par Maven
COPY target/*.jar app.jar

# Port exposé
EXPOSE 8080

# Lancement de l'application
ENTRYPOINT ["java", "-jar", "app.jar"]
