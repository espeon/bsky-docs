---
title: app.bsky.feed.getQuotes
description: Reference for the app.bsky.feed.getQuotes lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Get a list of quotes for a given post.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `uri` | `string` | ✅  | Reference (AT-URI) of post record | Format: `at-uri` |
| `cid` | `string` | ❌  | If supplied, filters to quotes of specific version (by CID) of the post record. | Format: `cid` |
| `limit` | `integer` | ❌  |  | Min: 1<br/>Max: 100<br/>Default: `50` |
| `cursor` | `string` | ❌  |  |  |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `uri` | `string` | ✅  |  | Format: `at-uri` |
| `cid` | `string` | ❌  |  | Format: `cid` |
| `cursor` | `string` | ❌  |  |  |
| `posts` | Array of [`app.bsky.feed.defs#postView`](/app/bsky/feed/defs#postView) | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.feed.getQuotes",
  "defs": {
    "main": {
      "type": "query",
      "description": "Get a list of quotes for a given post.",
      "parameters": {
        "type": "params",
        "required": [
          "uri"
        ],
        "properties": {
          "uri": {
            "type": "string",
            "format": "at-uri",
            "description": "Reference (AT-URI) of post record"
          },
          "cid": {
            "type": "string",
            "format": "cid",
            "description": "If supplied, filters to quotes of specific version (by CID) of the post record."
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
            "uri",
            "posts"
          ],
          "properties": {
            "uri": {
              "type": "string",
              "format": "at-uri"
            },
            "cid": {
              "type": "string",
              "format": "cid"
            },
            "cursor": {
              "type": "string"
            },
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
