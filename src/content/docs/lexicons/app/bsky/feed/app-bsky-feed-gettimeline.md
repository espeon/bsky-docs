---
title: app.bsky.feed.getTimeline
description: Reference for the app.bsky.feed.getTimeline lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Get a view of the requesting account's home timeline. This is expected to be some form of reverse-chronological feed.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `algorithm` | `string` | ❌  | Variant 'algorithm' for timeline. Implementation-specific. NOTE: most feed flexibility has been moved to feed generator mechanism. |  |
| `limit` | `integer` | ❌  |  | Min: 1<br/>Max: 100<br/>Default: `50` |
| `cursor` | `string` | ❌  |  |  |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `cursor` | `string` | ❌  |  |  |
| `feed` | Array of [`app.bsky.feed.defs#feedViewPost`](lexicons/app/bsky/feed/defs#feedViewPost) | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.feed.getTimeline",
  "defs": {
    "main": {
      "type": "query",
      "description": "Get a view of the requesting account's home timeline. This is expected to be some form of reverse-chronological feed.",
      "parameters": {
        "type": "params",
        "properties": {
          "algorithm": {
            "type": "string",
            "description": "Variant 'algorithm' for timeline. Implementation-specific. NOTE: most feed flexibility has been moved to feed generator mechanism."
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
      }
    }
  }
}
```
