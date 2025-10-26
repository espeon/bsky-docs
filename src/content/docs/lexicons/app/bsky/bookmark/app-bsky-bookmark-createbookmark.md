---
title: app.bsky.bookmark.createBookmark
description: Reference for the app.bsky.bookmark.createBookmark lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Creates a private bookmark for the specified record. Currently, only `app.bsky.feed.post` records are supported. Requires authentication.

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `uri` | `string` | ✅  |  | Format: `at-uri` |
| `cid` | `string` | ✅  |  | Format: `cid` |
**Possible Errors:**

- `UnsupportedCollection`: The URI to be bookmarked is for an unsupported collection.

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.bookmark.createBookmark",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Creates a private bookmark for the specified record. Currently, only `app.bsky.feed.post` records are supported. Requires authentication.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "uri",
            "cid"
          ],
          "properties": {
            "uri": {
              "type": "string",
              "format": "at-uri"
            },
            "cid": {
              "type": "string",
              "format": "cid"
            }
          }
        }
      },
      "errors": [
        {
          "name": "UnsupportedCollection",
          "description": "The URI to be bookmarked is for an unsupported collection."
        }
      ]
    }
  }
}
```
