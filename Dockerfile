FROM nginx:1.17.1-alpine
COPY --from=build ./dist/myapp /usr/share/nginx/html
LABEL maintainer="dhiaelhak.baghdadi@esprit.tn"
EXPOSE 4201
CMD ["nginx", "-g", "daemon off;"]
