FROM node:7

MAINTAINER Noah Heil

RUN apt update && \
    apt install -y \
                    vim \
                    wget \
                    libxml2-dev \
                    libxslt1-dev \
                    libpq-dev \
                    supervisor \
                    build-essential \
                    ca-certificates \
                    net-tools \
		    postgresql-client

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY package.json /usr/src/app/

RUN npm install

COPY . /usr/src/app

CMD [ "npm", "start" ]
