---
title: app.bsky.actor.searchActors
description: Reference for the app.bsky.actor.searchActors lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Find actors (profiles) matching search criteria. Does not require auth.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `term` | `string` | ❌  | DEPRECATED: use 'q' instead. |  |
| `q` | `string` | ❌  | Search query string. Syntax, phrase, boolean, and faceting is unspecified, but Lucene query syntax is recommended. |  |
| `limit` | `integer` | ❌  |  | Min: 1<br/>Max: 100<br/>Default: `25` |
| `cursor` | `string` | ❌  |  |  |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `cursor` | `string` | ❌  |  |  |
| `actors` | Array of [`app.bsky.actor.defs#profileView`](/lexicons/app/bsky/actor/app-bsky-actor-defs#profileview) | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.actor.searchActors",
  "defs": {
    "main": {
      "type": "query",
      "description": "Find actors (profiles) matching search criteria. Does not require auth.",
      "parameters": {
        "type": "params",
        "properties": {
          "term": {
            "type": "string",
            "description": "DEPRECATED: use 'q' instead."
          },
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
            "actors"
          ],
          "properties": {
            "cursor": {
              "type": "string"
            },
            "actors": {
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
