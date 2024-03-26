run:
	poetry run python src/main.py
ci:
	poetry run ruff check ./src 
test:
	poetry run pytest -v 
