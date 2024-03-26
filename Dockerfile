FROM python:3.10-slim-buster

WORKDIR /app

COPY ./src .

RUN pip3 install poetry
RUN poetry config virtualenvs.create false

COPY ./pyproject.toml ./poetry.lock ./

RUN poetry install --only main --no-interaction --no-ansi --no-root

CMD [ "python", "main.py"]
