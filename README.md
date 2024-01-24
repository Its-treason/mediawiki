# Mediawiki-ext

Custom Mediawiki image with more extensions installed.

Extra extensions:
- AutoCreateCategoryPages

## Building

```shell
docker buildx build --push --platform linux/arm64/v8,linux/amd64/v3 --tag itstreason/mediawiki-ext:1.41.0 .
```

