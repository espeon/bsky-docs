---
title: app.bsky.bookmark.getBookmarks
description: Reference for the app.bsky.bookmark.getBookmarks lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Gets views of records bookmarked by the authenticated user. Requires authentication.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `limit` | `integer` | ❌  |  | Min: 1<br/>Max: 100<br/>Default: `50` |
| `cursor` | `string` | ❌  |  |  |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `cursor` | `string` | ❌  |  |  |
| `bookmarks` | Array of [`app.bsky.bookmark.defs#bookmarkView`](/lexicons/app/bsky/bookmark/app-bsky-bookmark-defs#bookmarkview) | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.bookmark.getBookmarks",
  "defs": {
    "main": {
      "type": "query",
      "description": "Gets views of records bookmarked by the authenticated user. Requires authentication.",
      "parameters": {
        "type": "params",
        "properties": {
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
            "bookmarks"
          ],
          "properties": {
            "cursor": {
              "type": "string"
            },
            "bookmarks": {
              "type": "array",
              "items": {
                "type": "ref",
                "ref": "app.bsky.bookmark.defs#bookmarkView"
              }
            }
          }
        }
      }
    }
  }
}
```
