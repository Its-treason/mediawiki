FROM mediawiki:1.40.1 AS build

RUN apt update && apt install unzip -y --no-install-recommends

# Install Auto Create Category Pages
RUN curl https://codeload.github.com/wikimedia/mediawiki-extensions-AutoCreateCategoryPages/zip/refs/heads/REL1_38 -o /tmp/AutoCreateCategoryPages.zip

RUN unzip /tmp/AutoCreateCategoryPages.zip -d /tmp/unzipdir && \
    mv /tmp/unzipdir/* /var/www/html/extensions/AutoCreateCategoryPages

# Install Syntax Hightlightling ext
RUN curl https://codeload.github.com/wikimedia/mediawiki-extensions-SyntaxHighlight_GeSHi/zip/refs/heads/REL1_38 -o /tmp/SyntaxHighlight.zip

RUN unzip /tmp/SyntaxHighlight.zip -d /tmp/unzipdir && \
    mv /tmp/unzipdir/* /var/www/html/extensions/SyntaxHighlight

FROM mediawiki:1.40.0 AS production

COPY --from=build /var/www/html/extensions/AutoCreateCategoryPages /var/www/html/extensions/AutoCreateCategoryPages
COPY --from=build /var/www/html/extensions/SyntaxHighlight /var/www/html/extensions/SyntaxHighlight

