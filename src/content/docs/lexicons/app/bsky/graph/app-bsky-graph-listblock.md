---
title: app.bsky.graph.listblock
description: Reference for the app.bsky.graph.listblock lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `record`

Record representing a block relationship against an entire an entire list of accounts (actors).

**Record Key:** `tid`

**Record Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `subject` | `string` | ✅  | Reference (AT-URI) to the mod list record. | Format: `at-uri` |
| `createdAt` | `string` | ✅  |  | Format: `datetime` |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.graph.listblock",
  "defs": {
    "main": {
      "type": "record",
      "description": "Record representing a block relationship against an entire an entire list of accounts (actors).",
      "key": "tid",
      "record": {
        "type": "object",
        "required": [
          "subject",
          "createdAt"
        ],
        "properties": {
          "subject": {
            "type": "string",
            "format": "at-uri",
            "description": "Reference (AT-URI) to the mod list record."
          },
          "createdAt": {
            "type": "string",
            "format": "datetime"
          }
        }
      }
    }
  }
}
```
