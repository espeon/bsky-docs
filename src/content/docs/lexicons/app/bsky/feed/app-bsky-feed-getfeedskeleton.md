---
title: app.bsky.feed.getFeedSkeleton
description: Reference for the app.bsky.feed.getFeedSkeleton lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Get a skeleton of a feed provided by a feed generator. Auth is optional, depending on provider requirements, and provides the DID of the requester. Implemented by Feed Generator Service.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `feed` | `string` | ✅  | Reference to feed generator record describing the specific feed being requested. | Format: `at-uri` |
| `limit` | `integer` | ❌  |  | Min: 1<br/>Max: 100<br/>Default: `50` |
| `cursor` | `string` | ❌  |  |  |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `cursor` | `string` | ❌  |  |  |
| `feed` | Array of [`app.bsky.feed.defs#skeletonFeedPost`](/app/bsky/feed/defs#skeletonFeedPost) | ✅  |  |  |
| `reqId` | `string` | ❌  | Unique identifier per request that may be passed back alongside interactions. | Max Length: 100 |
**Possible Errors:**

- `UnknownFeed`

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.feed.getFeedSkeleton",
  "defs": {
    "main": {
      "type": "query",
      "description": "Get a skeleton of a feed provided by a feed generator. Auth is optional, depending on provider requirements, and provides the DID of the requester. Implemented by Feed Generator Service.",
      "parameters": {
        "type": "params",
        "required": [
          "feed"
        ],
        "properties": {
          "feed": {
            "type": "string",
            "format": "at-uri",
            "description": "Reference to feed generator record describing the specific feed being requested."
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
                "ref": "app.bsky.feed.defs#skeletonFeedPost"
              }
            },
            "reqId": {
              "type": "string",
              "description": "Unique identifier per request that may be passed back alongside interactions.",
              "maxLength": 100
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
