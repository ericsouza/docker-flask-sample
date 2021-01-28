 Creating production image (example):
```sh
docker build --target prod . -t flask_app-prod:0.1
```
Running production image:
```sh
docker run -p 5000:5000 flask_app-prod:0.1
```

Creating dev image (example):
```sh
docker build --target dev . -t flask_app-dev:0.1
```
Running dev image (with hot restart):
```sh
docker run --mount type=bind,source="$(pwd)",target=/usr/src/app --name flask_app-dev -p 5000:5000 flask_app-dev:0.1
```
