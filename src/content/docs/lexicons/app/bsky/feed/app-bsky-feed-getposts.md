---
title: app.bsky.feed.getPosts
description: Reference for the app.bsky.feed.getPosts lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Gets post views for a specified list of posts (by AT-URI). This is sometimes referred to as 'hydrating' a 'feed skeleton'.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `uris` | Array of `string` | ✅  | List of post AT-URIs to return hydrated views for. | Max Items: 25 |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `posts` | Array of [`app.bsky.feed.defs#postView`](/lexicons/app/bsky/feed/app-bsky-feed-defs#postview) | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.feed.getPosts",
  "defs": {
    "main": {
      "type": "query",
      "description": "Gets post views for a specified list of posts (by AT-URI). This is sometimes referred to as 'hydrating' a 'feed skeleton'.",
      "parameters": {
        "type": "params",
        "required": [
          "uris"
        ],
        "properties": {
          "uris": {
            "type": "array",
            "description": "List of post AT-URIs to return hydrated views for.",
            "items": {
              "type": "string",
              "format": "at-uri"
            },
            "maxLength": 25
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "posts"
          ],
          "properties": {
            "posts": {
              "type": "array",
              "items": {
                "type": "ref",
                "ref": "app.bsky.feed.defs#postView"
              }
            }
          }
        }
      }
    }
  }
}
```
