.PHONY: test genparams build upload distribute

test:
	python -m unittest

genapprox:
	python pymyami/parameters/gen_approx_coefs.py

build:
	python -m build

upload:
	twine upload dist/*

distribute:
	make test
	make build
	make upload