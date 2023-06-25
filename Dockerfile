FROM httpd:2.4

RUN apt-get update && \
    apt-get install -y wget unzip && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /usr/local/apache2/htdocs/

RUN wget -O photogenic.zip https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip && \
    unzip photogenic.zip && \
    rm -f photogenic.zip && \
    mv photogenic/* . && \
    rm -rf photogenic

EXPOSE 80

