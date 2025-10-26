---
title: chat.bsky.moderation.updateActorAccess
description: Reference for the chat.bsky.moderation.updateActorAccess lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `actor` | `string` | ✅  |  | Format: `did` |
| `allowAccess` | `boolean` | ✅  |  |  |
| `ref` | `string` | ❌  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "chat.bsky.moderation.updateActorAccess",
  "defs": {
    "main": {
      "type": "procedure",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "actor",
            "allowAccess"
          ],
          "properties": {
            "actor": {
              "type": "string",
              "format": "did"
            },
            "allowAccess": {
              "type": "boolean"
            },
            "ref": {
              "type": "string"
            }
          }
        }
      }
    }
  }
}
```
