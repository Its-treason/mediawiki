ARG ARCH=
FROM ${ARCH}debian:bookworm-slim AS build

RUN apt update \
 && apt install unzip curl bash -y \
 && mkdir /tmp/extensions

COPY ./unpackHelper.sh /unpackHelper.sh

ARG VERSION=43
# Install extensions. The unpackHelper will unpack the extension into /tmp/extensions/${name}
RUN bash /unpackHelper.sh "AutoCreateCategoryPages"
RUN bash /unpackHelper.sh "AntiSpoof"
RUN bash /unpackHelper.sh "intersection"
RUN bash /unpackHelper.sh "DynamicSidebar"
RUN bash /unpackHelper.sh "ApprovedRevs"
RUN bash /unpackHelper.sh "HitCounters"
RUN bash /unpackHelper.sh "MassMessage"
RUN bash /unpackHelper.sh "NewUserMessage"
RUN bash /unpackHelper.sh "Popups"
RUN bash /unpackHelper.sh "AdvancedSearch"
RUN bash /unpackHelper.sh "LoginNotify"
RUN bash /unpackHelper.sh "Cargo"

FROM ${ARCH}mediawiki:1.43.0 AS production

COPY --from=build --chown=www-data:www-data /tmp/extensions/ /var/www/html/extensions/
