---
title: app.bsky.feed.getFeedGenerator
description: Reference for the app.bsky.feed.getFeedGenerator lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Get information about a feed generator. Implemented by AppView.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `feed` | `string` | ✅  | AT-URI of the feed generator record. | Format: `at-uri` |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `view` | [`app.bsky.feed.defs#generatorView`](lexicons/app/bsky/feed/defs#generatorView) | ✅  |  |  |
| `isOnline` | `boolean` | ✅  | Indicates whether the feed generator service has been online recently, or else seems to be inactive. |  |
| `isValid` | `boolean` | ✅  | Indicates whether the feed generator service is compatible with the record declaration. |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.feed.getFeedGenerator",
  "defs": {
    "main": {
      "type": "query",
      "description": "Get information about a feed generator. Implemented by AppView.",
      "parameters": {
        "type": "params",
        "required": [
          "feed"
        ],
        "properties": {
          "feed": {
            "type": "string",
            "format": "at-uri",
            "description": "AT-URI of the feed generator record."
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "view",
            "isOnline",
            "isValid"
          ],
          "properties": {
            "view": {
              "type": "ref",
              "ref": "app.bsky.feed.defs#generatorView"
            },
            "isOnline": {
              "type": "boolean",
              "description": "Indicates whether the feed generator service has been online recently, or else seems to be inactive."
            },
            "isValid": {
              "type": "boolean",
              "description": "Indicates whether the feed generator service is compatible with the record declaration."
            }
          }
        }
      }
    }
  }
}
```
