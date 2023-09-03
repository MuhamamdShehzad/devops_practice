install:
		@echo "Installing..."
		pip install --upgrade pip &&\
			pip install -r requirements.txt
		@echo "Done."

lint:
	@echo "Linting using pylint..."
	@pylint --disable=R,C src/*.py 
	@echo "Done."

test:
	@echo "Testing..."
		python -m pytest -vv src/test.py
	@echo "Done."

run:
	@echo "Running..."
	@python src/main.py
	@echo "Done."