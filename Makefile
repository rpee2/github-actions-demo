install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

install-gcp:
	pip install --upgrade pip &&\
		pip install -r requirements-gcp.txt

install-aws:
	pip install --upgrade pip &&\
		pip install -r requirements-aws.txt

install-azure:
	pip install --upgrade pip &&\
		pip install -r requirements-azure.txt

install-cloud9:
	pip install --upgrade pip &&\
		pip install -r requirements-cloud9.txt
lint:
	pylint --disable=R,C hello.py

format:
	black *.py

test:
	python -m pytest -vv --cov=hello test_hello.py
