---
title: app.bsky.unspecced.getSuggestedFeeds
description: Reference for the app.bsky.unspecced.getSuggestedFeeds lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Get a list of suggested feeds

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `limit` | `integer` | ❌  |  | Min: 1<br/>Max: 25<br/>Default: `10` |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `feeds` | Array of [`app.bsky.feed.defs#generatorView`](lexicons/app/bsky/feed/defs#generatorView) | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.unspecced.getSuggestedFeeds",
  "defs": {
    "main": {
      "type": "query",
      "description": "Get a list of suggested feeds",
      "parameters": {
        "type": "params",
        "properties": {
          "limit": {
            "type": "integer",
            "minimum": 1,
            "maximum": 25,
            "default": 10
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
