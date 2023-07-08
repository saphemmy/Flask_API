# Flask_API

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