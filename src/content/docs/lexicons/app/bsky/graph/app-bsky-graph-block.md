---
title: app.bsky.graph.block
description: Reference for the app.bsky.graph.block lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `record`

Record declaring a 'block' relationship against another account. NOTE: blocks are public in Bluesky; see blog posts for details.

**Record Key:** `tid`

**Record Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `subject` | `string` | ✅  | DID of the account to be blocked. | Format: `did` |
| `createdAt` | `string` | ✅  |  | Format: `datetime` |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.graph.block",
  "defs": {
    "main": {
      "type": "record",
      "description": "Record declaring a 'block' relationship against another account. NOTE: blocks are public in Bluesky; see blog posts for details.",
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
            "format": "did",
            "description": "DID of the account to be blocked."
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
