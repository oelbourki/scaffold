install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

format:
	black *.py

lint:
	pylint --disable=R,C hello.py

test:
	pytest -vv --cov=hello test_hello.py

all:
	format lint test


