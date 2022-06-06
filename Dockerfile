FROM nginx:1.17.1-alpine

EXPOSE 4201
CMD ["nginx", "-g", "daemon off;"]
