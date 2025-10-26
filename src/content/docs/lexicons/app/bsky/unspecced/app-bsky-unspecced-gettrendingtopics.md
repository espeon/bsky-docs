---
title: app.bsky.unspecced.getTrendingTopics
description: Reference for the app.bsky.unspecced.getTrendingTopics lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Get a list of trending topics

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `viewer` | `string` | ❌  | DID of the account making the request (not included for public/unauthenticated queries). Used to boost followed accounts in ranking. | Format: `did` |
| `limit` | `integer` | ❌  |  | Min: 1<br/>Max: 25<br/>Default: `10` |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `topics` | Array of [`app.bsky.unspecced.defs#trendingTopic`](/lexicons/app/bsky/unspecced/defs#trendingTopic) | ✅  |  |  |
| `suggested` | Array of [`app.bsky.unspecced.defs#trendingTopic`](/lexicons/app/bsky/unspecced/defs#trendingTopic) | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.unspecced.getTrendingTopics",
  "defs": {
    "main": {
      "type": "query",
      "description": "Get a list of trending topics",
      "parameters": {
        "type": "params",
        "properties": {
          "viewer": {
            "type": "string",
            "format": "did",
            "description": "DID of the account making the request (not included for public/unauthenticated queries). Used to boost followed accounts in ranking."
          },
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
            "topics",
            "suggested"
          ],
          "properties": {
            "topics": {
              "type": "array",
              "items": {
                "type": "ref",
                "ref": "app.bsky.unspecced.defs#trendingTopic"
              }
            },
            "suggested": {
              "type": "array",
              "items": {
                "type": "ref",
                "ref": "app.bsky.unspecced.defs#trendingTopic"
              }
            }
          }
        }
      }
    }
  }
}
```
