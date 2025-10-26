---
title: app.bsky.graph.listitem
description: Reference for the app.bsky.graph.listitem lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `record`

Record representing an account's inclusion on a specific list. The AppView will ignore duplicate listitem records.

**Record Key:** `tid`

**Record Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `subject` | `string` | ✅  | The account which is included on the list. | Format: `did` |
| `list` | `string` | ✅  | Reference (AT-URI) to the list record (app.bsky.graph.list). | Format: `at-uri` |
| `createdAt` | `string` | ✅  |  | Format: `datetime` |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.graph.listitem",
  "defs": {
    "main": {
      "type": "record",
      "description": "Record representing an account's inclusion on a specific list. The AppView will ignore duplicate listitem records.",
      "key": "tid",
      "record": {
        "type": "object",
        "required": [
          "subject",
          "list",
          "createdAt"
        ],
        "properties": {
          "subject": {
            "type": "string",
            "format": "did",
            "description": "The account which is included on the list."
          },
          "list": {
            "type": "string",
            "format": "at-uri",
            "description": "Reference (AT-URI) to the list record (app.bsky.graph.list)."
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
