# Getting Started

Consuming a REST service with large payload we get entity too large, how to set the limit?
```
{
  "error": {
    "message": "request entity too large",
    "code": "413"
  }
}
```

## To show the problem:

- clone this repo
- `cds watch`
- run the 2° post request in file `test.http`

## Workaround, don't use this

`node_modules/@sap/cds/libx/_runtime/cds-services/adapter/rest/Rest.js`

``` (javascript)
  _createRouter() {
    this.router = this._express.Router()
    this.router.use(this._express.json({
      limit: "10MB"
    }))
  }
```
