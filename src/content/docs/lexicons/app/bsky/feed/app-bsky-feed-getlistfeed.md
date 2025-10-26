---
title: app.bsky.feed.getListFeed
description: Reference for the app.bsky.feed.getListFeed lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Get a feed of recent posts from a list (posts and reposts from any actors on the list). Does not require auth.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `list` | `string` | ✅  | Reference (AT-URI) to the list record. | Format: `at-uri` |
| `limit` | `integer` | ❌  |  | Min: 1<br/>Max: 100<br/>Default: `50` |
| `cursor` | `string` | ❌  |  |  |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `cursor` | `string` | ❌  |  |  |
| `feed` | Array of [`app.bsky.feed.defs#feedViewPost`](/lexicons/app/bsky/feed/defs#feedViewPost) | ✅  |  |  |
**Possible Errors:**

- `UnknownList`

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.feed.getListFeed",
  "defs": {
    "main": {
      "type": "query",
      "description": "Get a feed of recent posts from a list (posts and reposts from any actors on the list). Does not require auth.",
      "parameters": {
        "type": "params",
        "required": [
          "list"
        ],
        "properties": {
          "list": {
            "type": "string",
            "format": "at-uri",
            "description": "Reference (AT-URI) to the list record."
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
          "name": "UnknownList"
        }
      ]
    }
  }
}
```
