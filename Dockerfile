# Utiliser une image de base JRE 17
FROM openjdk:17-jdk-slim

# Dossier de travail dans le conteneur
WORKDIR /app

# Copier le fichier JAR généré
COPY target/task-api-0.0.1-SNAPSHOT.jar app.jar

# Exposer le port de l'API
EXPOSE 8085

# Commande de lancement
ENTRYPOINT ["java", "-jar", "app.jar"]
