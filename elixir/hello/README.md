# `Elixir/Hello`

This is a **Hello World** program written in **Elixir**.

``` Elixir
# Hello World in Elixir !

IO.puts "Hello World from Elixir !"
```

## Prerequisite

To run and build this program you need to have the following:

<div align="center">

| Name | Commands | Required | Recommended | Optional | Notes |
|:----:|:--------:|:--------:|:-----------:|:--------:|:-----:|
| [**Elixir**](https://elixir.org/install) | **`elixir`**<br>**`elixirc`**<br>**`mix`** | &#9989; | &#9989; | &#10062; | **`kiex install x.y.z`**<br>or<br>**`apt install elixir`** |
| [**Erlang OTP**](https://www.erlang.org/downloads) | **`erl`**<br>**`escript`** | &#9989; | &#9989; | &#10062; | **`kerl install x.y.z`**<br>or<br>**`evm install x.y.z`**<br>or<br>**`apt install erlang`** |

</div>

## Building

This program is designed to be built automatically using tools such as
**`mix`**, or manually with **`elixirc`**, or other **Elixir Compilers**. You
can initiate the build process either from the root directory or the source
directory.

### Root Directory

#### Using `mix`

> [!NOTE]
> This **will install all dependencies** from **all the packages in the
> workspace**. Installing **will require some time**.

From the root directory, run one of the following:

```
mix deps.get
mix compile
```
```
mix deps.get
mix build.elixir.hello
```

### Source Directory _(optional)_

#### Using `mix`

From the source directory, you can run:

```
mix deps.get
mix compile
```

#### Using `elixir compilers`

To use **`elixirc`**, or other **Elixir Compilers** from the source directory,
run one of the following:

> [!CAUTION]
> This **will create build artifacts** in the source directory that you may
> **have to manually remove**.

> [!NOTE]
> The **sources** are located in the **lib** directory.

> [!TIP]
> * The **elixirc** compiles the program into a **beam bytecode**.

```
cd lib
elixirc hello.ex
```

## Running

The execution of this program can be seamlessly handled using automated build
tools like **`mix`**, or manually with **`elixirc`**, or other **Elixir
Compilers**. You can run the program from either the root directory or the
source directory.

### Root Directory

#### Using `mix`

From the root directory, run one of the following:

```
mix elixir-hello
```
```
mix run.elixir.hello
```
```
mix run -e "Hello.start([])"
```

#### Using `elixir interpreter`

To use **`elixir`** to run it directly from root directory:

```
elixir elixir/hello/run.exs
```
```
elixir -r elixir/hello/lib/hello.ex -e "Hello.start([])"
```

### Source Directory _(optional)_

#### Using `mix`

From the source directory, you can run one of the following:

```
mix elixir-hello
```
```
mix run.elixir.hello
```

#### Using `elixir compilers`

If you used **`elixirc`**, or other **Elixir Compilers** for building the
program:

```
# using elixir
cd lib
elixir -e "Hello.start([])"
```
```
# using iex
cd lib
iex -e "Hello.start([])" -e "System.halt()"
```
```
# using iex interactive
cd lib
iex
iex(1)> Hello.start([])
iex(2)> System.halt()
```
```
# using iex -S mix
iex -S mix
iex(1)> Hello.start([])
iex(2)> System.halt()
```

#### Using `elixir`

To use **`elixir`** to run it directly from source directory, run one of the
following:

```
elixir run.exs
```
```
cd lib
elixir -r hello.ex -e "Hello.start([])"
```
```
./run.exs
```

## License

Licensed under [**MIT License**](LICENSE).
