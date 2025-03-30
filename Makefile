VIRTUAL_ENV = env
PYCACHE = __pycache__
PYTESTCACHE = .pytest_cache
COVERAGEDOTFILE = .coverage
TESTAPP = test_app.py 
HOST = 10.92.21.104
PORT = 8089

.PHONY: setup clean test run

setup:
	python3 -m venv $(VIRTUAL_ENV)
	. $(VIRTUAL_ENV)/bin/activate && pip install -r requirements.txt
	@echo "To activate the environment, run: source $(VIRTUAL_ENV)/bin/activate"

clean:
	rm -rf $(VIRTUAL_ENV)/ $(PYCACHE)/ $(PYTESTCACHE)/ 
	rm -f $(COVERAGEDOTFILE)

test:
	@if [ -z "$$VIRTUAL_ENV" ]; then \
		echo "Error: The virtual environment is not activated, so 'make test' cannot be run."; \
		echo "To set up the environment and install dependencies, run 'make setup'."; \
		echo "If the virtual environment is already created and dependencies are installed, activate it using:"; \
		echo "    source $(VIRTUAL_ENV)/bin/activate"; \
		echo "Once the virtual environment is activated, you can run 'make test'."; \
	else \
		pytest $(TESTAPP); \
		coverage run -m pytest; \
		coverage report -m; \
	fi

run:
	@if [ -z "$$VIRTUAL_ENV" ]; then \
		echo "Error: The virtual environment is not activated, so 'make run' cannot be run."; \
		echo "To set up the environment and install dependencies, run 'make setup'."; \
		echo "If the virtual environment is already created and dependencies are installed, activate it using:"; \
		echo "    source $(VIRTUAL_ENV)/bin/activate"; \
		echo "Once the virtual environment is activated, you can run 'make run'."; \
	else \
		flask run --host=$(HOST) --port=$(PORT); \
	fi