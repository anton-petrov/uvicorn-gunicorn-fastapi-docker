FROM antonapetrov/uvicorn-gunicorn:miniforge3.9

LABEL maintainer="Anton Petrov<anton.a.petrov@gmail.com>"

RUN pip install --no-cache-dir fastapi

COPY ./app /app