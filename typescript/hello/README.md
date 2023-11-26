# `TypeScript/Hello`

This is a **Hello World** program written in **TypeScript**.

## Prerequisite

To run and build this program you need to install:

* [**Node.js**](https://nodejs.org/en/download/current)
  * `npm`
  * `npx`

* [**ts-node**](https://typestrong.org/ts-node/docs/installation) _**(Recommended)**_
  * `ts-node`

## Building

From the root directory run:

* ```
  npm install
  ```

## Running

### Root Directory

From the root directory run one of the following:

* ```
  npx ts-hello
  ```
* ```
  npm exec ts-hello
  ```
* ```
  npm start -w ts-hello
  ```

You can also use `ts-node` from the root directory:

* ```
  ts-node typescript/hello/src/hello.ts
  ```
* ```
  npx ts-node typescript/hello/src/hello.ts
  ```

You can also use [`lerna`](https://lerna.js.org/) or [`nx`](https://nx.dev/) from the root directory: _**(optional)**_

* ```
  npx lerna run ts-hello
  ```
* ```
  npx nx start ts-hello
  ```
* ```
  npx nx run ts-hello:start
  ```

### Source Directory _(optional)_

From the source directory you can run one of the following:

* ```
  npm start
  ```
* ```
  ts-node hello.ts
  ```
* ```
  ./index.ts
  ```

You can also use [`nx`](https://nx.dev/) from the source directory:

* ```
  npx nx start
  ```

## License

Licensed under [**MIT License**](https://github.com/altersabeh/codes/blob/main/LICENSE).
