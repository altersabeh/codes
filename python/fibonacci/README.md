# `Python/Fibonacci`

This is a **Fibonacci** program written in **Python**.

## Prerequisite

To run and build this program you need to install:

* [**Python**](https://www.python.org/downloads/)
  * `python`

* [**Poetry**](https://python-poetry.org/docs/#installing-with-pipx)
  * `poetry`

## Building

### Root Directory

From the root directory run:

* ```
  poetry env use python
  poetry install
  ```

### Source Directory _(optional)_

From the source directory you can run:

* ```
  poetry env use python
  poetry install
  ```

## Running

### Root Directory

From the root directory run one of the following:

* ```
  poe python-fibonacci
  ```
* ```
  poetry poe python-fibonacci
  ```
* ```
  poetry run python-fibonacci
  ```

You can also use `python` to run it directly: _**(optional)**_

* ```
  python python/fibonacci/src/python_fibonacci/fibonacci.py
  ```

You can also use [`pants`](https://www.pantsbuild.org/docs/installation) from the root directory: _**(optional)**_

* ```
  pants run python/fibonacci
  ```

### Source Directory _(optional)_

From the source directory you can run:

* ```
  poetry run python-fibonacci
  ```

You can also use `python` to run it directly: _**(optional)**_

* ```
  python fibonacci.py
  ```

## License

Licensed under [**MIT License**](LICENSE).
