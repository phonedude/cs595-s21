# express-server-logs
This is an express middleware for displaying logs in the console and also logging your custom error, info, warning and success messages
in console with colors for the messages.

## Usage

Works like any other middleware in express
```node
const express = require('express');
const bodyParser = require('body-parser');
const _expressLog = require('express-server-logs');

const app = express();
const log = new _expressLog();

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
app.use(log.logger);

```

Using with options
express-server-logs takes 2 arguments one for productionMode and other is options
```node
const log = new _expressLog(productionMode, options);
```
productionMode can be true or false, for true your custom messages will not display to console and for false it will.

Options here is an object
```
{
  date: true,
  url: true,
  method: true,
  headers: true,
  pathParam: true,
  bodyParam: true,
  queryParam: true
}
```
Set value of key to false if you don't want that info to be display in logs.
By default productionMode is false and options have true for all keys

## Example
```node
const log = new _expressLog(true, {
                                    date: true,
                                    url: true,
                                    method: true,
                                    headers: true,
                                    pathParam: false,
                                    bodyParam: true,
                                    queryParam: true
                                  });

```

## Using custom messages from express-server-logs
You can log your custom error messages to console using predefined messages in express-server-logs
Pre defined custom messages are of type info(), success(), error(), warning()

## Example
```node
log.info('test info'); // for info color will be blue
log.success('test success'); // for success color is green
log.error('test error'); // for error color is red
log.warning('test warning'); // for warning color is yellow
```

## Note
* express-server-logs should be use after the body parser * 
* for productionMode = true the custom messages will not be displayed to console *


