# `TypeScript/Greeter`

This is a **Greeter** program written in **TypeScript**.

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
  npx ts-greeter
  ```
* ```
  npm exec ts-greeter
  ```
* ```
  npm start -w ts-greeter
  ```

You can also use `ts-node` from the root directory:

* ```
  ts-node typescript/greeter/src/greeter.ts
  ```
* ```
  npx ts-node typescript/greeter/src/greeter.ts
  ```

You can also use [`lerna`](https://lerna.js.org/) or [`nx`](https://nx.dev/) from the root directory: _**(optional)**_

* ```
  npx lerna run ts-greeter
  ```
* ```
  npx nx start ts-greeter
  ```
* ```
  npx nx run ts-greeter:start
  ```

### Source Directory _(optional)_

From the source directory you can run one of the following:

* ```
  npm start
  ```
* ```
  ts-node greeter.ts
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
