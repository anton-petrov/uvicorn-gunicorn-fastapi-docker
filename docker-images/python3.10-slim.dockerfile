FROM antonapetrov/uvicorn-gunicorn:python3.10-slim

LABEL maintainer="Anton Petrov<anton.a.petrov@gmail.com>"

RUN pip install --no-cache-dir fastapi

COPY ./app /app
