run:
	poetry run python src/main.py
ci:
	poetry run ruff check ./src --verbose
test:
	poetry run pytest -v 
