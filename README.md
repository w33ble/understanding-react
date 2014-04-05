# Understanding React - Code Generator

This repo generates the code from my [Understanding React](https://slid.es/w33ble/understanding-react) presentation.

You can view the rendered version [right here](http://w33ble.github.io/understanding-react)

# Generation

## Requirements

- [Node.js](http://nodejs.org)
- [Docpad](http://docpad.org)

## Installation

If you haven't already, install docpad.

`npm install -g docpad`

Then, to get local dependencies:

`npm install`

### Static generation

`docpad generate`

The source will be in the newly created `out` path

### Locally hosted

`docpad server`

It'll tell you what URL to put in the browser to view it

### Local development

`docpad run`

This will generate the site, watch for changes and regenerate with site as needed, and also live-reload the page in the browser.

It'll tell you what URL to put in the browser to view it
