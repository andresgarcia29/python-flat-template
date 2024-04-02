FROM python:${python_version}-alpine

RUN apk add --no-cache gcc musl-dev python3-dev libffi-dev openssl-dev cargo

WORKDIR /app

COPY ./src .

RUN pip3 install poetry
RUN poetry config virtualenvs.create false

COPY ./pyproject.toml ./poetry.lock ./

RUN poetry install --only main --no-interaction --no-ansi --no-root

CMD [ "python", "main.py"]
