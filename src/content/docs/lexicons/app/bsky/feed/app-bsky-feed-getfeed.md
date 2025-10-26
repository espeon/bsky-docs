---
title: app.bsky.feed.getFeed
description: Reference for the app.bsky.feed.getFeed lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Get a hydrated feed from an actor's selected feed generator. Implemented by App View.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `feed` | `string` | ✅  |  | Format: `at-uri` |
| `limit` | `integer` | ❌  |  | Min: 1<br/>Max: 100<br/>Default: `50` |
| `cursor` | `string` | ❌  |  |  |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `cursor` | `string` | ❌  |  |  |
| `feed` | Array of [`app.bsky.feed.defs#feedViewPost`](/app/bsky/feed/defs#feedViewPost) | ✅  |  |  |
**Possible Errors:**

- `UnknownFeed`

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.feed.getFeed",
  "defs": {
    "main": {
      "type": "query",
      "description": "Get a hydrated feed from an actor's selected feed generator. Implemented by App View.",
      "parameters": {
        "type": "params",
        "required": [
          "feed"
        ],
        "properties": {
          "feed": {
            "type": "string",
            "format": "at-uri"
          },
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
            "feed"
          ],
          "properties": {
            "cursor": {
              "type": "string"
            },
            "feed": {
              "type": "array",
              "items": {
                "type": "ref",
                "ref": "app.bsky.feed.defs#feedViewPost"
              }
            }
          }
        }
      },
      "errors": [
        {
          "name": "UnknownFeed"
        }
      ]
    }
  }
}
```
