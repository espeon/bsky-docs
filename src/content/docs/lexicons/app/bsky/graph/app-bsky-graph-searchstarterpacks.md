---
title: app.bsky.graph.searchStarterPacks
description: Reference for the app.bsky.graph.searchStarterPacks lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Find starter packs matching search criteria. Does not require auth.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `q` | `string` | ✅  | Search query string. Syntax, phrase, boolean, and faceting is unspecified, but Lucene query syntax is recommended. |  |
| `limit` | `integer` | ❌  |  | Min: 1<br/>Max: 100<br/>Default: `25` |
| `cursor` | `string` | ❌  |  |  |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `cursor` | `string` | ❌  |  |  |
| `starterPacks` | Array of [`app.bsky.graph.defs#starterPackViewBasic`](lexicons/app/bsky/graph/defs#starterPackViewBasic) | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.graph.searchStarterPacks",
  "defs": {
    "main": {
      "type": "query",
      "description": "Find starter packs matching search criteria. Does not require auth.",
      "parameters": {
        "type": "params",
        "required": [
          "q"
        ],
        "properties": {
          "q": {
            "type": "string",
            "description": "Search query string. Syntax, phrase, boolean, and faceting is unspecified, but Lucene query syntax is recommended."
          },
          "limit": {
            "type": "integer",
            "minimum": 1,
            "maximum": 100,
            "default": 25
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
            "starterPacks"
          ],
          "properties": {
            "cursor": {
              "type": "string"
            },
            "starterPacks": {
              "type": "array",
              "items": {
                "type": "ref",
                "ref": "app.bsky.graph.defs#starterPackViewBasic"
              }
            }
          }
        }
      }
    }
  }
}
```
