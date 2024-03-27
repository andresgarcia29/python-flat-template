run:
	poetry run python src/main.py
ci:
	poetry run ruff check .
	poetry run ruff format . --check
	poetry run pre-commit run --all-files --verbose
test:
	poetry run pytest -v
