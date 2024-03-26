# Python Flat Template

This is a simple Python template project with an entry point to `main.py`. It utilizes Poetry for dependency management, Ruff for linting and formatting, and includes Docker and Docker Compose configurations.

## Usage

1. Clone this repository:

   ```bash
   git clone https://github.com/andresgarcia29/python-flat-template.git
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

## Structure

- `src/main.py`: The entry point of the application.
- `tests/*.py`: Folder to create all the tests of your application.
- `pyproject.toml`: Poetry configuration file.
- `poetry.lock`: Poetry lock file.
- `README.md`: This file.
- `ruff.ini`: Ruff configuration file.
- `Dockerfile`: Docker configuration file.
- `docker-compose.yml`: Docker Compose configuration file.

## Dependencies

This project uses [Poetry](https://python-poetry.org/) for dependency management. Follow the instructions below to add project dependencies and development dependencies.

### Adding Project Dependencies

To add a project dependency, use the following command:

```bash
poetry add package_name
```

Replace `package_name` with the name of the package you want to add. Poetry will automatically update the `pyproject.toml` file and install the package.

### Adding Development Dependencies

Development dependencies are packages that are only needed for development and testing purposes. To add a development dependency, use the following command:

```bash
poetry add --dev package_name
```

Replace `package_name` with the name of the package you want to add as a development dependency. Poetry will add the package to the `[tool.poetry.dev-dependencies]` section in the `pyproject.toml` file.

### Installing Dependencies

After adding dependencies, you can install them using the following command:

```bash
poetry install
```

This command will install both project dependencies and development dependencies listed in the `pyproject.toml` file.

### Updating Dependencies

To update dependencies to their latest compatible versions, you can use the following command:

```bash
poetry update
```

This command will update the `pyproject.toml` file and install the updated dependencies.

For more information on managing dependencies with Poetry, refer to the [Poetry documentation](https://python-poetry.org/docs/).

```
Make sure to replace `package_name` with the actual name of the package you want to add. This section provides instructions for adding project dependencies and development dependencies separately, and also includes instructions for installing and updating dependencies with Poetry.
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

## Running Tests

This project uses pytest for testing. All test files should be located within the `tests` directory and follow the naming convention `test_*.py`.

To execute the tests, run the following command:

```bash
make test
```

This command will automatically discover and run all tests within the `tests` directory.

## Writing Tests

When writing tests, make sure to follow good testing practices and organize your test files logically within the `tests` directory. Use meaningful names for test functions and adhere to the Arrange-Act-Assert pattern.

Example test file (`tests/test_example.py`):

```python
# Import necessary modules
import pytest
from mymodule import my_function_to_test

# Define test functions
def test_my_function():
    # Arrange
    input_value = 5

    # Act
    result = my_function_to_test(input_value)

    # Assert
    assert result == 10
```

## License

```
This project is licensed under the [MIT License](LICENSE). Feel free to modify and use it according to your needs.

```
