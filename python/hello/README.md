# `Python/Hello`

This is a **Hello World** program written in **Python**.

## Prerequisite

To run and build this program you need to have the following:

<div align="center">

| Name | Commands | Required | Recommended | Optional | Notes |
|:----:|:--------:|:--------:|:-----------:|:--------:|:-----:|
| [**Python**](https://www.python.org/downloads/) | **`python`**<br>**`pip`** | &#9989; | &#9989; | &#10062; | **`pyenv install x.y.z`**<br>or<br>**`apt install python3`** |
| [**Poetry**](https://python-poetry.org/docs/#installing-with-pipx) | **`poetry`** | &#9989; | &#9989; | &#10062; | **`pipx install poetry`**<br>or<br>**`apt install python3-poetry`** |
| [**Pants Build**](https://www.pantsbuild.org/docs/installation) | **`pants`** | &#10062; | &#10062; | &#9989; | **`brew install pantsbuild/tap/pants`** |
| [**Bazel**](https://bazel.build/) | **`bazel`**<br>**`bazelisk`** | &#10062; | &#10062; | &#9989; | **`npm install -g @bazel/bazelisk`**<br>or<br>**`apt install bazel`** |
| [**Buck 2**](https://buck2.build/docs/getting_started/) | **`buck2`** | &#10062; | &#10062; | &#9989; | **`cargo install buck2`** |

</div>

## Building

This program is designed to be built automatically using tools such as
**`poetry`**, **`pants`**, **`bazel`**, and **`buck`**. You can initiate the
build process either from the root directory or the source directory.

### Root Directory

#### Using `poetry`

From the root directory:

```
poetry env use python
poetry install
```

#### Using `bazel`

To use **`bazel`** from the root directory, run one of the following:

```
bazel build python-hello
```
```
bazel build python/hello:main
```

#### Using `buck2`

To use **`buck2`** from the root directory, run one of the following:

```
buck2 build :python-hello
```
```
buck2 build python/hello:main
```

### Source Directory _(optional)_

#### Using `poetry`

From the source directory, you can run:

```
poetry env use python
poetry install
```

#### Using `bazel`

To use **`bazel`** from the source directory, run one of the following:

```
bazel build main
```
```
bazel build python-hello
```

#### Using `buck2`

To use **`buck2`** from the source directory, run one of the following:

```
buck2 build :main
```
```
buck2 build :python-hello
```

## Running

The execution of this program can be seamlessly handled using automated build
tools like **`poetry`**, **`pants`**, **`bazel`**, and **`buck`**. You can run
the program from either the root directory or the source directory.

### Root Directory

#### Using `poetry`

From the root directory, run one of the following:

```
poe python-hello
```
```
poetry poe python-hello
```
```
poetry run python-hello
```

#### Using `python interpreters`

To use **`python`**, **`pypy`**, or other **Python interpreters** to run it
directly from root directory, run one of the following:

```
python python/hello/src/python_hello/hello.py
```
```
pypy python/hello/src/python_hello/hello.py
```

#### Using `pants`

To use **`pants`** from the root directory, run one of the following:

```
pants run python/hello
```

#### Using `bazel`

To use **`bazel`** from the root directory, run one of the following:

```
bazel run python-hello
```
```
bazel run python/hello:main
```

#### Using `buck2`

To use **`buck2`** from the root directory, run one of the following:

```
buck2 run :python-hello
```
```
buck2 run python/hello:main
```

### Source Directory _(optional)_

#### Using `poetry`

From the source directory, you can run:

```
poetry run python-hello
```

#### Using `python interpreters`

To use **`python`**, **`pypy`**, or other **Python interpreters** to run it
directly from source directory, run one of the following:

```
cd src/python_hello
python hello.py
```
```
cd src/python_hello
pypy hello.py
```

#### Using `pants`

To use **`pants`** from the source directory, run one of the following:

```
pants run :python-hello
```

#### Using `bazel`

To use **`bazel`** from the source directory, run one of the following:

```
bazel run main
```
```
bazel run python-hello
```

#### Using `buck2`

To use **`buck2`** from the source directory, run one of the following:

```
buck2 run :main
```
```
buck2 run :python-hello
```

## License

Licensed under [**MIT License**](LICENSE).
