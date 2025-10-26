---
title: app.bsky.graph.getListBlocks
description: Reference for the app.bsky.graph.getListBlocks lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Get mod lists that the requesting account (actor) is blocking. Requires auth.

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
| `lists` | Array of [`app.bsky.graph.defs#listView`](lexicons/app/bsky/graph/defs#listView) | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.graph.getListBlocks",
  "defs": {
    "main": {
      "type": "query",
      "description": "Get mod lists that the requesting account (actor) is blocking. Requires auth.",
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
            "lists"
          ],
          "properties": {
            "cursor": {
              "type": "string"
            },
            "lists": {
              "type": "array",
              "items": {
                "type": "ref",
                "ref": "app.bsky.graph.defs#listView"
              }
            }
          }
        }
      }
    }
  }
}
```
