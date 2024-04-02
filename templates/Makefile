run:
	poetry run python src/main.py
linter:
	poetry run ruff check .
format-check:
	poetry run ruff format . --check
pre-commit:
	poetry run pre-commit run --all-files --verbose
ci:
	poetry run ruff check .
	poetry run ruff format . --check
	poetry run pre-commit run --all-files --verbose
test:
	poetry run pytest -v
