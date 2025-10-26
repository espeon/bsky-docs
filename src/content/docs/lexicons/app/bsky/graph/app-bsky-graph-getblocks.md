---
title: app.bsky.graph.getBlocks
description: Reference for the app.bsky.graph.getBlocks lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Enumerates which accounts the requesting account is currently blocking. Requires auth.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `limit` | `integer` | ❌  |  | Min: 1<br/>Max: 100<br/>Default: `50` |
| `cursor` | `string` | ❌  |  |  |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `cursor` | `string` | ❌  |  |  |
| `blocks` | Array of [`app.bsky.actor.defs#profileView`](lexicons/app/bsky/actor/defs#profileView) | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.graph.getBlocks",
  "defs": {
    "main": {
      "type": "query",
      "description": "Enumerates which accounts the requesting account is currently blocking. Requires auth.",
      "parameters": {
        "type": "params",
        "properties": {
          "limit": {
            "type": "integer",
            "minimum": 1,
            "maximum": 100,
            "default": 50
          },
          "cursor": {
            "type": "string"
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "blocks"
          ],
          "properties": {
            "cursor": {
              "type": "string"
            },
            "blocks": {
              "type": "array",
              "items": {
                "type": "ref",
                "ref": "app.bsky.actor.defs#profileView"
              }
            }
          }
        }
      }
    }
  }
}
```
