---
title: tools.ozone.set.deleteSet
description: Reference for the tools.ozone.set.deleteSet lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Delete an entire set. Attempting to delete a set that does not exist will result in an error.

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `name` | `string` | ✅  | Name of the set to delete |  |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

_(No properties defined)_
**Possible Errors:**

- `SetNotFound`: set with the given name does not exist

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "tools.ozone.set.deleteSet",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Delete an entire set. Attempting to delete a set that does not exist will result in an error.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "name"
          ],
          "properties": {
            "name": {
              "type": "string",
              "description": "Name of the set to delete"
            }
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "properties": {}
        }
      },
      "errors": [
        {
          "name": "SetNotFound",
          "description": "set with the given name does not exist"
        }
      ]
    }
  }
}
```
