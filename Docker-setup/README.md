# Exercism CPP Build and Test Environment Base Image Docker File

If the base image needs to be adjusted, this is the Dockerfile that generates it.

Build simply with 

```
docker build --rm -f "Dockerfile" -t exercism-cpp-test-env:my-tag .
```