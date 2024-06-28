FROM nginx:alpine
WORKDIR /Users/ALX/Documents/COURSES/CDA_DEVOPS/FIL_ROUGE/good_neighborhood
COPY . .
#ADD source dest
#RUN
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
#ENTRYPOINT [ "executable" ]