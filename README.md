# Python Flat Template

This is a simple Python template project with an entry point to `main.py`. It utilizes Poetry for dependency management, Ruff for linting and formatting, and includes Docker and Docker Compose configurations.

## Usage

1. Clone this repository:

   ```bash
   git clone https://github.com/your-username/python-flat-template.git
   ```

2. Navigate to the project directory:

   ```bash
   cd python-flat-template
   ```

3. Install dependencies:

   ```bash
   poetry install
   ```

4. Run linting and formatting:

   ```bash
   poetry run ruff
   ```

5. Run the main script:

   ```bash
   poetry run python main.py
   ```

## Docker

To run the application in a Docker container:

1. Build the Docker image:

   ```bash
   docker-compose build
   ```

2. Run the Docker container:

   ```bash
   docker-compose up
   ```

## Structure

- `main.py`: The entry point of the application.
- `pyproject.toml`: Poetry configuration file.
- `poetry.lock`: Poetry lock file.
- `README.md`: This file.
- `ruff.ini`: Ruff configuration file.
- `requirements.txt`: List of Python dependencies (used for Docker).
- `Dockerfile`: Docker configuration file.
- `docker-compose.yml`: Docker Compose configuration file.

## License

This project is licensed under the [MIT License](LICENSE). Feel free to modify and use it according to your needs.
