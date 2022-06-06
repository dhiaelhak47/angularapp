FROM nginx:1.17.1-alpine
COPY /Desktop/myapp/dist/myapp /usr/share/nginx/html
LABEL maintainer="dhiaelhak.baghdadi@esprit.tn"
EXPOSE 4201
CMD ["nginx", "-g", "daemon off;"]
