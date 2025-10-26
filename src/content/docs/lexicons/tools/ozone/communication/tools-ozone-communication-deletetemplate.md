---
title: tools.ozone.communication.deleteTemplate
description: Reference for the tools.ozone.communication.deleteTemplate lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Delete a communication template.

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `id` | `string` | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "tools.ozone.communication.deleteTemplate",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Delete a communication template.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "id"
          ],
          "properties": {
            "id": {
              "type": "string"
            }
          }
        }
      }
    }
  }
}
```
