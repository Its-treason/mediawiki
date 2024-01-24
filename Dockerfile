ARG ARCH=
FROM ${ARCH}debian:bookworm-slim AS build

RUN apt update \
 && apt install unzip curl -y \
 && mkdir /tmp/extensions

# Install Auto Create Category Pages
RUN curl https://codeload.github.com/wikimedia/mediawiki-extensions-AutoCreateCategoryPages/zip/refs/heads/REL1_41 -o /tmp/AutoCreateCategoryPages.zip \
 && unzip /tmp/AutoCreateCategoryPages.zip -d /tmp/AutoCreateCategoryPages

FROM ${ARCH}mediawiki:1.41.0 AS production

COPY --from=build /tmp/AutoCreateCategoryPages/* /var/www/html/extensions/AutoCreateCategoryPages
