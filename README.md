# Flask REST-API

### RUN
`docker build -t rest-apis-flask-python .` 

`docker run -p 5005:5000 rest-apis-flask-python`

### NOTE for `local` development purpose
- To ensure the host folder sync's with the container folder run the command below:
`docker run -dp 5001:5000 -w /ap -v "$(pwd):/app" desirable_image_name`

## Overview REST API

- Create store, each with a `name` and a list of stocked `items`.
- Create an item within a store, each with a `name` and a `price`.
- Retrieve a list of all stores and their items.
- Given a `name`, retrive only a list within it.

### This is how the interaction will go!

## Create stores
### Request:
`POST /store {"name": "My Store"}`
### Response
`{"name": "My Store", "items": []}`

## Create items
### Request:
`POST /store/My Store/item {"name": "Chair", "price": 170:50}`
### Response
`{"name": "Chair", "price": 170:50}`

## Retrive all stores and thier items
### Request:
`GET /store`
### Response
```
{
    "stores": [
        "name": "My Store",
        "items": [
            {
                "name": "Chair",
                "price": 170.50
            }
        ]
    ]
}
```

## Get a particular store
### Request:
`GET /store/My Store`
### Response
```
{
    "name": "My Store",
    "items": [
        {
            "name": "Chair",
            "price": 170.50
        }
    ]
}
```

## Get only items in a store
### Request:
`GET /store/My Store/item`
### Response
```
{
    {
        "name": "Chair",
        "price": 170.50
    }
}