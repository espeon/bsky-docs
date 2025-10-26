---
title: app.bsky.feed.getActorLikes
description: Reference for the app.bsky.feed.getActorLikes lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Get a list of posts liked by an actor. Requires auth, actor must be the requesting account.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `actor` | `string` | ✅  |  | Format: `at-identifier` |
| `limit` | `integer` | ❌  |  | Min: 1<br/>Max: 100<br/>Default: `50` |
| `cursor` | `string` | ❌  |  |  |
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
  "id": "app.bsky.feed.getActorLikes",
  "defs": {
    "main": {
      "type": "query",
      "description": "Get a list of posts liked by an actor. Requires auth, actor must be the requesting account.",
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
