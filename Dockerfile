# vim:set ft=dockerfile:
FROM rabbitmq:3.8-management-alpine
LABEL maintainer="Vitaly Kovalyshyn"

ENV WEBITEL_MAJOR 20
ENV WEBITEL_REPO_BASE https://github.com/webitel

ADD config/ /etc/rabbitmq/
ADD https://dl.bintray.com/rabbitmq/community-plugins/3.8.x/rabbitmq_delayed_message_exchange/rabbitmq_delayed_message_exchange-20191008-3.8.x.zip /plugins/
RUN unzip /plugins/rabbitmq_delayed_message_exchange-20191008-3.8.x.zip -d /plugins/ \
    && rm /plugins/rabbitmq_delayed_message_exchange-20191008-3.8.x.zip
