FROM jenkinsci/blueocean
COPY . /app
WORKDIR /
USER root
RUN apk update && apk add nodejs && apk add npm && apk add yarn
RUN node -v && npm -v && yarn -v
EXPOSE 8080/tcp
CMD node -v