# Utiliser l'image de base officielle Nginx
FROM nginx:alpine

# Supprimer la configuration par défaut de Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copier les fichiers de ton site statique vers le dossier de Nginx
COPY ./ /usr/share/nginx/html

# Exposer le port 80 pour l'accès HTTP
EXPOSE 3000

# Démarrer Nginx lorsque le conteneur démarre
CMD ["nginx", "-g", "daemon off;"]