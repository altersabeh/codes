# `C#/Fibonacci`

This is a **Fibonacci** program written in **C#**.

## Prerequisite

To run and build this program you need to have the following:

<div align="center">

| Name | Commands | Required | Recommended | Optional | Notes |
|:----:|:--------:|:--------:|:-----------:|:--------:|:-----:|
| [**.Net SDK**](https://dotnet.microsoft.com/) | **`dotnet`** | &#9989; | &#9989; | &#10062; | **`sudo apt install dotnet-sdk-5.0`**<br>**`sudo apt install dotnet-sdk-6.0`**<br>**`sudo apt install dotnet-sdk-7.0`**<br>**`sudo apt install dotnet-sdk-8.0`** |
| [**Mono C# Compiler**](https://www.mono-project.com/download/stable/#download-lin) | **`mono`**<br>**`csc`**<br>**`mcs`** | &#10062; | &#10062; | &#9989; | **`sudo apt install mono-devel`**<br>**`sudo apt install mono-complete`** |

</div>

## Building

### Root Directory

This program is designed to be built automatically using tools such as **`dotnet`**, or manually with **`csc`**, **`mcs`**, or other **C# Compilers**. You can initiate the build process either from the root directory or the source directory.

#### Using `dotnet`

From the root directory, run one of the following:

```
dotnet build c#/fibonacci
```
```
dotnet build c#/fibonacci/c#-fibonacci.csproj
```
```
dotnet build --project c#/fibonacci
```

### Source Directory _(optional)_

#### Using `dotnet`

From the source directory, you can run:

```
dotnet build
```

#### Using `mono compiler`

To use **`mono`** from the source directory, you can run one of the following:

> [!CAUTION]
> This **will create build artifacts** in the source directory that you may **have to manually remove**.

> [!NOTE]
> The **sources** are located in the **src** directory.

> [!IMPORTANT]
> Mono compiler may **not support latest C# features** and may **require modifying the source code**.

```
cd src
csc fibonacci.cs -out:c#-fibonacci
```
```
cd src
mcs fibonacci.cs -out:c#-fibonacci
```

## Running

The execution of this program can be seamlessly handled using automated build tools like **`dotnet`**, or manually with **`mono`**, using **`mcs`**, **`csc`** or other **C# Compilers**. You can run the program from either the root directory or the source directory.

### Root Directory

#### Using `dotnet`

From the root directory run:

```
dotnet run --project c#/fibonacci
```

### Source Directory _(optional)_

#### Using `dotnet`

From the source directory, you can run:

```
dotnet run
```

#### Using `mono compiler`

If you used **`csc`**, **`mcs`**, or other **C# Compilers** for building the program:

```
cd src
mono c#-fibonacci.exe
```

## License

Licensed under [**MIT License**](LICENSE).
