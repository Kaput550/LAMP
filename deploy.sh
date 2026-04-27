echo "Bajamos repositorio actualizado"


#Copiamos código actualizado de Github
git pull origin main

echo "detenemos contenedores"
#Detenemos contenedores
docker-compose down

#Inicializamos contenedores y reconstruimos
echo "Inicializamos contenedores y reconstruimos imagen actualizada"
docker-compose -f docker-compose.production.yml up -d --build

echo "Contenedores actualizados y en ejecución"