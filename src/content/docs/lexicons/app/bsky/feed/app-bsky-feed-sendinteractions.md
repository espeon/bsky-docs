---
title: app.bsky.feed.sendInteractions
description: Reference for the app.bsky.feed.sendInteractions lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Send information about interactions with feed items back to the feed generator that served them.

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `interactions` | Array of [`app.bsky.feed.defs#interaction`](lexicons/app/bsky/feed/defs#interaction) | ✅  |  |  |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

_(No properties defined)_

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.feed.sendInteractions",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Send information about interactions with feed items back to the feed generator that served them.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "interactions"
          ],
          "properties": {
            "interactions": {
              "type": "array",
              "items": {
                "type": "ref",
                "ref": "app.bsky.feed.defs#interaction"
              }
            }
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "properties": {}
        }
      }
    }
  }
}
```
