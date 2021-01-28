FROM python:3.8.1-slim AS base

ENTRYPOINT ["flask","run","--host=0.0.0.0"]
WORKDIR /usr/src/app
RUN pip install --upgrade pip

COPY requirements.txt .
RUN pip install -r requirements.txt
ENV FLASK_APP ./app.py

FROM base AS dev
ENV FLASK_ENV development
ENV FLASK_DEBUG 1

FROM base as prod
ENV FLASK_ENV production
COPY app.py ./