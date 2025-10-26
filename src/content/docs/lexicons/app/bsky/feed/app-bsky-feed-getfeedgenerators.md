---
title: app.bsky.feed.getFeedGenerators
description: Reference for the app.bsky.feed.getFeedGenerators lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Get information about a list of feed generators.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `feeds` | Array of `string` | ✅  |  |  |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `feeds` | Array of [`app.bsky.feed.defs#generatorView`](/lexicons/app/bsky/feed/app-bsky-feed-defs#generatorview) | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.feed.getFeedGenerators",
  "defs": {
    "main": {
      "type": "query",
      "description": "Get information about a list of feed generators.",
      "parameters": {
        "type": "params",
        "required": [
          "feeds"
        ],
        "properties": {
          "feeds": {
            "type": "array",
            "items": {
              "type": "string",
              "format": "at-uri"
            }
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "feeds"
          ],
          "properties": {
            "feeds": {
              "type": "array",
              "items": {
                "type": "ref",
                "ref": "app.bsky.feed.defs#generatorView"
              }
            }
          }
        }
      }
    }
  }
}
```
