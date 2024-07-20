FROM nginx:alpine

EXPOSE 80

WORKDIR /app

RUN echo "Hello from the container!" > /app/hello.txt

COPY ./local_file.txt /app/

CMD ["nginx", "-g", "daemon off;"]
