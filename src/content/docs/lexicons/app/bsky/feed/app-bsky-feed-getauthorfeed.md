---
title: app.bsky.feed.getAuthorFeed
description: Reference for the app.bsky.feed.getAuthorFeed lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Get a view of an actor's 'author feed' (post and reposts by the author). Does not require auth.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `actor` | `string` | ✅  |  | Format: `at-identifier` |
| `limit` | `integer` | ❌  |  | Min: 1<br/>Max: 100<br/>Default: `50` |
| `cursor` | `string` | ❌  |  |  |
| `filter` | `string` | ❌  | Combinations of post/repost types to include in response. | Known Values: `posts_with_replies`, `posts_no_replies`, `posts_with_media`, `posts_and_author_threads`, `posts_with_video`<br/>Default: `posts_with_replies` |
| `includePins` | `boolean` | ❌  |  | Default: `false` |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `cursor` | `string` | ❌  |  |  |
| `feed` | Array of [`app.bsky.feed.defs#feedViewPost`](/lexicons/app/bsky/feed/app-bsky-feed-defs#feedviewpost) | ✅  |  |  |
**Possible Errors:**

- `BlockedActor`
- `BlockedByActor`

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.feed.getAuthorFeed",
  "defs": {
    "main": {
      "type": "query",
      "description": "Get a view of an actor's 'author feed' (post and reposts by the author). Does not require auth.",
      "parameters": {
        "type": "params",
        "required": [
          "actor"
        ],
        "properties": {
          "actor": {
            "type": "string",
            "format": "at-identifier"
          },
          "limit": {
            "type": "integer",
            "minimum": 1,
            "maximum": 100,
            "default": 50
          },
          "cursor": {
            "type": "string"
          },
          "filter": {
            "type": "string",
            "description": "Combinations of post/repost types to include in response.",
            "knownValues": [
              "posts_with_replies",
              "posts_no_replies",
              "posts_with_media",
              "posts_and_author_threads",
              "posts_with_video"
            ],
            "default": "posts_with_replies"
          },
          "includePins": {
            "type": "boolean",
            "default": false
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
          "name": "BlockedActor"
        },
        {
          "name": "BlockedByActor"
        }
      ]
    }
  }
}
```
