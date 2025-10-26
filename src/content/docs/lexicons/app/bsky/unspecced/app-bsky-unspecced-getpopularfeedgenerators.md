---
title: app.bsky.unspecced.getPopularFeedGenerators
description: Reference for the app.bsky.unspecced.getPopularFeedGenerators lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

An unspecced view of globally popular feed generators.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `limit` | `integer` | ❌  |  | Min: 1<br/>Max: 100<br/>Default: `50` |
| `cursor` | `string` | ❌  |  |  |
| `query` | `string` | ❌  |  |  |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `cursor` | `string` | ❌  |  |  |
| `feeds` | Array of [`app.bsky.feed.defs#generatorView`](/app/bsky/feed/defs#generatorView) | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.unspecced.getPopularFeedGenerators",
  "defs": {
    "main": {
      "type": "query",
      "description": "An unspecced view of globally popular feed generators.",
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
          },
          "query": {
            "type": "string"
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "feeds"
          ],
          "properties": {
            "cursor": {
              "type": "string"
            },
            "feeds": {
              "type": "array",
              "items": {
                "type": "ref",
                "ref": "app.bsky.feed.defs#generatorView"
              }
            }
          }
        }
      }
    }
  }
}
```
