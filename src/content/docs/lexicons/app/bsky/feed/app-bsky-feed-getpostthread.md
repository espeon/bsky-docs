---
title: app.bsky.feed.getPostThread
description: Reference for the app.bsky.feed.getPostThread lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Get posts in a thread. Does not require auth, but additional metadata and filtering will be applied for authed requests.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `uri` | `string` | ✅  | Reference (AT-URI) to post record. | Format: `at-uri` |
| `depth` | `integer` | ❌  | How many levels of reply depth should be included in response. | Min: 0<br/>Max: 1000<br/>Default: `6` |
| `parentHeight` | `integer` | ❌  | How many levels of parent (and grandparent, etc) post to include. | Min: 0<br/>Max: 1000<br/>Default: `80` |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `thread` | Union of:<br/>&nbsp;&nbsp;[`app.bsky.feed.defs#threadViewPost`](lexicons/app/bsky/feed/defs#threadViewPost)<br/>&nbsp;&nbsp;[`app.bsky.feed.defs#notFoundPost`](lexicons/app/bsky/feed/defs#notFoundPost)<br/>&nbsp;&nbsp;[`app.bsky.feed.defs#blockedPost`](lexicons/app/bsky/feed/defs#blockedPost) | ✅  |  |  |
| `threadgate` | [`app.bsky.feed.defs#threadgateView`](lexicons/app/bsky/feed/defs#threadgateView) | ❌  |  |  |
**Possible Errors:**

- `NotFound`

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.feed.getPostThread",
  "defs": {
    "main": {
      "type": "query",
      "description": "Get posts in a thread. Does not require auth, but additional metadata and filtering will be applied for authed requests.",
      "parameters": {
        "type": "params",
        "required": [
          "uri"
        ],
        "properties": {
          "uri": {
            "type": "string",
            "format": "at-uri",
            "description": "Reference (AT-URI) to post record."
          },
          "depth": {
            "type": "integer",
            "description": "How many levels of reply depth should be included in response.",
            "default": 6,
            "minimum": 0,
            "maximum": 1000
          },
          "parentHeight": {
            "type": "integer",
            "description": "How many levels of parent (and grandparent, etc) post to include.",
            "default": 80,
            "minimum": 0,
            "maximum": 1000
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "thread"
          ],
          "properties": {
            "thread": {
              "type": "union",
              "refs": [
                "app.bsky.feed.defs#threadViewPost",
                "app.bsky.feed.defs#notFoundPost",
                "app.bsky.feed.defs#blockedPost"
              ]
            },
            "threadgate": {
              "type": "ref",
              "ref": "app.bsky.feed.defs#threadgateView"
            }
          }
        }
      },
      "errors": [
        {
          "name": "NotFound"
        }
      ]
    }
  }
}
```
