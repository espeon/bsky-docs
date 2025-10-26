---
title: tools.ozone.set.deleteValues
description: Reference for the tools.ozone.set.deleteValues lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Delete values from a specific set. Attempting to delete values that are not in the set will not result in an error

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `name` | `string` | ✅  | Name of the set to delete values from |  |
| `values` | Array of `string` | ✅  | Array of string values to delete from the set | Min Items: 1 |
**Possible Errors:**

- `SetNotFound`: set with the given name does not exist

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "tools.ozone.set.deleteValues",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Delete values from a specific set. Attempting to delete values that are not in the set will not result in an error",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "name",
            "values"
          ],
          "properties": {
            "name": {
              "type": "string",
              "description": "Name of the set to delete values from"
            },
            "values": {
              "type": "array",
              "minLength": 1,
              "items": {
                "type": "string"
              },
              "description": "Array of string values to delete from the set"
            }
          }
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
