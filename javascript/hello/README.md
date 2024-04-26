# `JavaScript/Hello`

This is a **Hello World** program written in **JavaScript**.

``` JavaScript
// Hello World in JavaScript !

console.log('Hello World from JavaScript !');
```

## Prerequisite

<div align="center">

| Name | Commands | Required | Recommended | Optional | Notes |
|:----:|:--------:|:--------:|:-----------:|:--------:|:-----:|
| [**Node.js**](https://nodejs.org/en/download/current) | **`npm`**<br>**`npx`**<br>**`node`** | &#9989; | &#9989; | &#10062; | **`nvm install node`**<br>or<br>**`nodenv install x.y.z`** |
| [**Nx**](https://nx.dev/getting-started/installation) | **`nx`** | &#10062; | &#9989; | &#9989; | **`npm install nx`**<br>or<br>**`npm install -g nx`** |
| [**Lerna**](https://lerna.js.org/docs/getting-started#adding-lerna-to-an-existing-repo) | **`lerna`** | &#10062; | &#10062; | &#9989; | **`npm install lerna`**<br>or<br>**`npm install -g lerna`** |
| [**Turborepo**](https://turbo.build/repo/docs/getting-started/add-to-project) | **`turbo`** | &#10062; | &#10062; | &#9989; | **`npm install turbo`**<br>or<br>**`npm install -g turbo`** |
| [**Yarn**](https://www.graalvm.org/downloads/#) | **`yarn`** | &#10062; | &#10062; | &#9989; | **`npm install -g yarn`** |
| [**pnpm**](https://maven.apache.org/install.html) | **`pnpm`** | &#10062; | &#10062; | &#9989; | **`npm install -g pnpm`** |
| [**Bun**](https://bun.sh/docs/installation) | **`bun`** | &#10062; | &#10062; | &#9989; | **`npm install -g bun`** |

</div>

## Building

This program is designed to be built automatically using tools such as
**`npm`**, **`yarn`**, **`pnpm`**, **`nx`**, **`lerna`**, and **`turbo`**. You
can initiate the build process either from the root directory or the source
directory.

### Root Directory

> [!NOTE]
> This **will install all dependencies** from **all the packages in the
> workspace**. Installing **will require some time**.

#### Using `npm`

From the root directory:

```
npm install
```

#### Using `yarn`

To use **`yarn`** from the root directory:

> [!CAUTION]
> Using **yarn together with npm or pnpm** may issue a warning due to
> **unsynchronized lock files**.

```
yarn install --no-lockfile
```

#### Using `pnpm`

> [!CAUTION]
> Using **pnpm together with npm or yarn** may issue an **error when updating or
> installing dependencies**.

To use **`pnpm`** from the root directory:

```
pnpm install --no-lockfile
```

#### Using `bun`

To use **`bun`**from the root directory:

```
bun install --no-save
```

### Source Directory _(optional)_

> [!NOTE]
> Building from source directory is the **same as building from root
> directory**.

## Running

The execution of this program can be seamlessly handled using automated build
tools like **`npm`**, **`yarn`**, **`pnpm`**, **`nx`**, **`lerna`**, and
**`turbo`**. You can run the program from either the root directory or the
source directory.

### Root Directory

#### Using `npm`

From the root directory, run one of the following:

```
npx js-hello
```
```
npm exec js-hello
```
```
npm start -w js-hello
```

#### Using `yarn`

To use **`yarn`** from the root directory:

```
yarn run js-hello
```
```
yarn exec js-hello
```
```
yarn workspace js-hello start
```

#### Using `pnpm`

To use **`pnpm`** from the root directory:

```
pnpm js-hello start
```
```
pnpm exec js-hello
```
```
pnpm --filter js-hello start
```

#### Using `javascript runtime environment`

To use **`node`**, **`bun`**, **`deno`** or other **JavaScript runtime
environment** to run it directly from root directory, run one of the following:

```
node javascript/hello/src/hello.js
```
```
bun javascript/hello/src/hello.js
```

#### Using `nx`

> [!IMPORTANT]
> Nx may **not properly display prompts that require user input** and may
> **require modifying the source code**.

To use **`nx`** from the root directory, run one of the following:

```
nx start js-hello
```
```
npx nx start js-hello
```
```
npx nx run js-hello:start
```

#### Using `lerna`

> [!IMPORTANT]
> Lerna may **not properly display prompts that require user input** and may
> **require modifying the source code**.

To use **`lerna`** from the root directory, run one of the following::

```
lerna run js-hello
```
```
npx lerna run js-hello
```

#### Using `turbo`

> [!NOTE]
> Turbo **requires only one type of lock file**.

> [!IMPORTANT]
> Turbo may **not properly display prompts that require user input** and may
> **require modifying the source code**.

```
turbo start --filter js-hello
```
```
npx turbo start --filter js-hello
```

### Source Directory _(optional)_

#### Using `npm`, `yarn`, `pnpm`, or `bun`

From the source directory, you can run:

```
npm start
```
```
yarn start
```
```
pnpm start
```
```
bun start
```

#### Using `javascript runtime environment`

To use **`node`**, **`bun`**, **`deno`** or other **JavaScript runtime
environment** to run it directly from source directory, run one of the
following:

```
./index.js
```
```
cd src
node hello.js
```
```
cd src
bun hello.js
```

#### Using `nx`

To use **`nx`** from the source directory, run one of the following:

```
nx start
```
```
npx nx start
```

#### Using `turbo`

To use **`nx`** from the source directory, run one of the following:

```
turbo start
```
```
npx turbo start
```

## License

Licensed under [**MIT License**](LICENSE).
