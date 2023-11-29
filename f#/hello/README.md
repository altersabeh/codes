# `F#/Hello`

This is a **Hello World** program written in **F#**.

## Prerequisite

To run and build this program you need to have the following:

<div align="center">

| Name | Commands | Required | Recommended | Optional | Notes |
|:----:|:--------:|:--------:|:-----------:|:--------:|:-----:|
| [**.Net SDK**](https://dotnet.microsoft.com/) | **`dotnet`** | &#9989; | &#9989; | &#10062; | **`sudo apt install dotnet-sdk-5.0`**<br>or<br>**`sudo apt install dotnet-sdk-6.0`**<br>or<br>**`sudo apt install dotnet-sdk-7.0`**<br>or<br>**`sudo apt install dotnet-sdk-8.0`** |
| [**Mono F# Compiler**](https://www.mono-project.com/download/stable/#download-lin) | **`mono`**<br>**`fsharpc`** | &#10062; | &#10062; | &#9989; | **`sudo apt install fsharp`** |

</div>

## Building

### Root Directory

This program is designed to be built automatically using tools such as **`dotnet`**, or manually with **`fsharpc`**, or other **F# Compilers**. You can initiate the build process either from the root directory or the source directory.

#### Using `dotnet`

From the root directory, run one of the following:

```
dotnet build f#/hello
```
```
dotnet build f#/hello/f#-hello.csproj
```
```
dotnet build --project f#/hello
```

### Source Directory _(optional)_

#### Using `dotnet`

From the source directory, you can run:

```
dotnet build
```

#### Using `mono compiler`

To use **`mono`** from the source directory, you can run:

> [!CAUTION]
> This **will create build artifacts** in the source directory that you may **have to manually remove**.

> [!NOTE]
> The **sources** are located in the **src** directory.

> [!IMPORTANT]
> Mono compiler may **not support latest F# features** and may **require modifying the source code**.

```
cd src
fsharpc hello.cs --out:f#-hello
```

## Running

The execution of this program can be seamlessly handled using automated build tools like **`dotnet`**, or manually with **`mono`**, using **`fsharpc`** or other **F# Compilers**. You can run the program from either the root directory or the source directory.

### Root Directory

#### Using `dotnet`

From the root directory run:

```
dotnet run --project f#/hello
```

### Source Directory _(optional)_

#### Using `dotnet`

From the source directory, you can run:

```
dotnet run
```

#### Using `mono compiler`

If you used **`fsharpc`**, or other **F# Compilers** for building the program:

```
cd src
mono f#-hello.exe
```

## License

Licensed under [**MIT License**](LICENSE).
