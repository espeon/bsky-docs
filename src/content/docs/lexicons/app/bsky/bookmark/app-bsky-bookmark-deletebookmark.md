---
title: app.bsky.bookmark.deleteBookmark
description: Reference for the app.bsky.bookmark.deleteBookmark lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Deletes a private bookmark for the specified record. Currently, only `app.bsky.feed.post` records are supported. Requires authentication.

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `uri` | `string` | ✅  |  | Format: `at-uri` |
**Possible Errors:**

- `UnsupportedCollection`: The URI to be bookmarked is for an unsupported collection.

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.bookmark.deleteBookmark",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Deletes a private bookmark for the specified record. Currently, only `app.bsky.feed.post` records are supported. Requires authentication.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "uri"
          ],
          "properties": {
            "uri": {
              "type": "string",
              "format": "at-uri"
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
