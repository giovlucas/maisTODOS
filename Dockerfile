
# imagem base
FROM public.ecr.aws/docker/library/ubuntu:latest
# mantenedor da imagem
LABEL maintainer="MT"
# Atualiza a imagem com os pacotes
RUN apt-get update && apt-get upgrade -y
# Instala o NGINX
RUN apt-get install nginx -y
# Expoe a porta 80
EXPOSE 80
# Comando para iniciar o NGINX no Container
CMD ["nginx", "-g", "daemon off;"]

