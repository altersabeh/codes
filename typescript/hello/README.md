# TypeScript/Hello

This is a **Hello World** program written in **TypeScript**.

### Prerequisite

To run and build this program you need to install:

* [**Node.js**](https://nodejs.org/en/download/current)
  * `npm`
  * `npx`

* [**ts-node**](https://typestrong.org/ts-node/docs/installation) _**(Recommended)**_
  * `ts-node`

### Building

From the root directory run the following command:

* `npm install`

### Running

From the root directory run one of the following:

* `npx ts-hello`
* `npm exec ts-hello`
* `npm start -w ts-hello`

_**(optional)**_ Using `lerna` and `nx` from the root directory:

* `npx lerna run ts-hello`
* `npx nx start ts-hello`
* `npx nx run ts-hello:start`

_**(optional)**_ From the source directory you can run one of the following:

* `npm start`
* `ts-node hello.js`
* `npx ts-node hello.ts`
* `./ts-hello.ts`

### License

Licensed under [**MIT License**](https://github.com/altersabeh/codes/blob/main/LICENSE).
