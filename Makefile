run:
	poetry run python src/main.py
ci:
	poetry run ruff check .
	poetry run ruff format . --check
test:
	poetry run pytest -v 
