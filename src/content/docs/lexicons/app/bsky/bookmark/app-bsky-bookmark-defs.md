---
title: app.bsky.bookmark.defs
description: Reference for the app.bsky.bookmark.defs lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="bookmark"></a>
### `bookmark`

**Type:** `object`

Object used to store bookmark data in stash.

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `subject` | [`com.atproto.repo.strongRef`](/lexicons/com/atproto/repo/com-atproto-repo-strongref) | ✅  | A strong ref to the record to be bookmarked. Currently, only `app.bsky.feed.post` records are supported. |  |

---

<a name="bookmarkview"></a>
### `bookmarkView`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `subject` | [`com.atproto.repo.strongRef`](/lexicons/com/atproto/repo/com-atproto-repo-strongref) | ✅  | A strong ref to the bookmarked record. |  |
| `createdAt` | `string` | ❌  |  | Format: `datetime` |
| `item` | Union of:<br/>&nbsp;&nbsp;[`app.bsky.feed.defs#blockedPost`](/lexicons/app/bsky/feed/app-bsky-feed-defs#blockedpost)<br/>&nbsp;&nbsp;[`app.bsky.feed.defs#notFoundPost`](/lexicons/app/bsky/feed/app-bsky-feed-defs#notfoundpost)<br/>&nbsp;&nbsp;[`app.bsky.feed.defs#postView`](/lexicons/app/bsky/feed/app-bsky-feed-defs#postview) | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.bookmark.defs",
  "defs": {
    "bookmark": {
      "description": "Object used to store bookmark data in stash.",
      "type": "object",
      "required": [
        "subject"
      ],
      "properties": {
        "subject": {
          "description": "A strong ref to the record to be bookmarked. Currently, only `app.bsky.feed.post` records are supported.",
          "type": "ref",
          "ref": "com.atproto.repo.strongRef"
        }
      }
    },
    "bookmarkView": {
      "type": "object",
      "required": [
        "subject",
        "item"
      ],
      "properties": {
        "subject": {
          "description": "A strong ref to the bookmarked record.",
          "type": "ref",
          "ref": "com.atproto.repo.strongRef"
        },
        "createdAt": {
          "type": "string",
          "format": "datetime"
        },
        "item": {
          "type": "union",
          "refs": [
            "app.bsky.feed.defs#blockedPost",
            "app.bsky.feed.defs#notFoundPost",
            "app.bsky.feed.defs#postView"
          ]
        }
      }
    }
  }
}
```
