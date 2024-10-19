# Utilise l'image officielle Nginx comme base
FROM nginx:alpine

# Copie les fichiers de votre site statique dans le répertoire par défaut d'Nginx
COPY ./ /usr/share/nginx/html

# Expose le port 80 pour accéder au site web
EXPOSE 80

# Commande par défaut pour lancer Nginx
CMD ["nginx", "-g", "daemon off;"]
