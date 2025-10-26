---
title: app.bsky.graph.follow
description: Reference for the app.bsky.graph.follow lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `record`

Record declaring a social 'follow' relationship of another account. Duplicate follows will be ignored by the AppView.

**Record Key:** `tid`

**Record Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `subject` | `string` | ✅  |  | Format: `did` |
| `createdAt` | `string` | ✅  |  | Format: `datetime` |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.graph.follow",
  "defs": {
    "main": {
      "type": "record",
      "description": "Record declaring a social 'follow' relationship of another account. Duplicate follows will be ignored by the AppView.",
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
            "format": "did"
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
