# `Q#/Hello`

This is a **Hello World** program written in **Q#**.

## Prerequisite

To run and build this program you need to have the following:

<div align="center">

| Name | Commands | Required | Recommended | Optional | Notes |
|:----:|:--------:|:--------:|:-----------:|:--------:|:-----:|
| [**.Net SDK**](https://dotnet.microsoft.com/) | **`dotnet`** | &#9989; | &#9989; | &#10062; | **`sudo apt install dotnet-sdk-5.0`**<br>or<br>**`sudo apt install dotnet-sdk-6.0`**<br>or<br>**`sudo apt install dotnet-sdk-7.0`**<br>or<br>**`sudo apt install dotnet-sdk-8.0`** |
| [**Quantum Development Kit**](https://learn.microsoft.com/en-us/azure/quantum/install-overview-qdk?tabs=tabid-vscode%2Ctabid-dotnetcli#use-q-and-python-with-jupyter-notebooks) | **`qsc`**  | &#9989; | &#9989; | &#10062; | **`dotnet new install Microsoft.Quantum.ProjectTemplates`** |

</div>

## Building

### Root Directory

This program is designed to be built automatically using tools such as
**`dotnet`**, or manually with **`qsc`**, or other **Q# Compilers**. You can
initiate the build process either from the root directory or the source
directory.

#### Using `dotnet`

From the root directory, run one of the following:

```
dotnet build q#/hello
```
```
dotnet build q#/hello/q#-hello.csproj
```
```
dotnet build --project q#/hello
```

### Source Directory _(optional)_

#### Using `dotnet`

From the source directory, you can run:

```
dotnet build
```

#### Using `q# compiler`

To use **`qsc`** or other **Q# Compilers** from the source directory, you can
run:

> [!CAUTION]
> This **will create build artifacts** in the source directory that you may
> **have to manually remove**.

> [!NOTE]
> The **sources** are located in the **src** directory.

```
cd src
dotnet qsc.exe build --input hello.qs -o q#-hello
```

## Running

The execution of this program can be seamlessly handled using automated build
tools like **`dotnet`**, or manually  using **`qsc`** or other **Q# Compilers**.
You can run the program from either the root directory or the source directory.

### Root Directory

#### Using `dotnet`

From the root directory run:

```
dotnet run --project q#/hello
```

### Source Directory _(optional)_

#### Using `dotnet`

From the source directory, you can run:

```
dotnet run
```

#### Using `q# compiler`

If you used **`qsc`**, or other **Q# Compilers** for building the program:

```
cd src
dotnet q#-hello.exe
```

## License

Licensed under [**MIT License**](LICENSE).
