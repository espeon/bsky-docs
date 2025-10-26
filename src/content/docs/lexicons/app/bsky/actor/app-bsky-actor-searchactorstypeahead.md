---
title: app.bsky.actor.searchActorsTypeahead
description: Reference for the app.bsky.actor.searchActorsTypeahead lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Find actor suggestions for a prefix search term. Expected use is for auto-completion during text field entry. Does not require auth.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `term` | `string` | ❌  | DEPRECATED: use 'q' instead. |  |
| `q` | `string` | ❌  | Search query prefix; not a full query string. |  |
| `limit` | `integer` | ❌  |  | Min: 1<br/>Max: 100<br/>Default: `10` |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `actors` | Array of [`app.bsky.actor.defs#profileViewBasic`](lexicons/app/bsky/actor/defs#profileViewBasic) | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.actor.searchActorsTypeahead",
  "defs": {
    "main": {
      "type": "query",
      "description": "Find actor suggestions for a prefix search term. Expected use is for auto-completion during text field entry. Does not require auth.",
      "parameters": {
        "type": "params",
        "properties": {
          "term": {
            "type": "string",
            "description": "DEPRECATED: use 'q' instead."
          },
          "q": {
            "type": "string",
            "description": "Search query prefix; not a full query string."
          },
          "limit": {
            "type": "integer",
            "minimum": 1,
            "maximum": 100,
            "default": 10
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "actors"
          ],
          "properties": {
            "actors": {
              "type": "array",
              "items": {
                "type": "ref",
                "ref": "app.bsky.actor.defs#profileViewBasic"
              }
            }
          }
        }
      }
    }
  }
}
```
