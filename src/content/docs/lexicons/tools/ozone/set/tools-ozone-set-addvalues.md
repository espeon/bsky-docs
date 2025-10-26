---
title: tools.ozone.set.addValues
description: Reference for the tools.ozone.set.addValues lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Add values to a specific set. Attempting to add values to a set that does not exist will result in an error.

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `name` | `string` | ✅  | Name of the set to add values to |  |
| `values` | Array of `string` | ✅  | Array of string values to add to the set | Min Items: 1<br/>Max Items: 1000 |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "tools.ozone.set.addValues",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Add values to a specific set. Attempting to add values to a set that does not exist will result in an error.",
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
              "description": "Name of the set to add values to"
            },
            "values": {
              "type": "array",
              "minLength": 1,
              "maxLength": 1000,
              "items": {
                "type": "string"
              },
              "description": "Array of string values to add to the set"
            }
          }
        }
      }
    }
  }
}
```
