# `JavaScript/Hello`

This is a **Hello World** program written in **JavaScript**.

## Prerequisite

To run and build this program you need to install:

* [**Node.js**](https://nodejs.org/en/download/current)
  * `npm`
  * `node`
  * `npx`

## Building

From the root directory run:

* ```
  npm install
  ```

## Running

### Root Directory

From the root directory run one of the following:

* ```
  npx js-hello
  ```
* ```
  npm exec js-hello
  ```
* ```
  npm start -w js-hello
  ```
You can also use `node` from the root directory:

* ```
  node typescript/hello/src/hello.js
  ```
* ```
  npx node typescript/hello/src/hello.js
  ```

You can also use [`lerna`](https://lerna.js.org/) or [`nx`](https://nx.dev/) from the root directory: _**(optional)**_

* ```
  npx lerna run js-hello
  ```
* ```
  npx nx start js-hello
  ```
* ```
  npx nx run js-hello:start
  ```

### Source Directory _(optional)_

From the source directory you can run one of the following:

* ```
  npm start
  ```
* ```
  node hello.js
  ```
* ```
  ./index.js
  ```

You can also use [`nx`](https://nx.dev/) from the source directory:

* ```
  npx nx start
  ```

## License

Licensed under [**MIT License**](https://github.com/altersabeh/codes/blob/main/LICENSE).
