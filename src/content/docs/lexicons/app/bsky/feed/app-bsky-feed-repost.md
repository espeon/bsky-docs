---
title: app.bsky.feed.repost
description: Reference for the app.bsky.feed.repost lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `record`

Record representing a 'repost' of an existing Bluesky post.

**Record Key:** `tid`

**Record Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `subject` | [`com.atproto.repo.strongRef`](/com/atproto/repo/strongref#undefined) | ✅  |  |  |
| `createdAt` | `string` | ✅  |  | Format: `datetime` |
| `via` | [`com.atproto.repo.strongRef`](/com/atproto/repo/strongref#undefined) | ❌  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.feed.repost",
  "defs": {
    "main": {
      "description": "Record representing a 'repost' of an existing Bluesky post.",
      "type": "record",
      "key": "tid",
      "record": {
        "type": "object",
        "required": [
          "subject",
          "createdAt"
        ],
        "properties": {
          "subject": {
            "type": "ref",
            "ref": "com.atproto.repo.strongRef"
          },
          "createdAt": {
            "type": "string",
            "format": "datetime"
          },
          "via": {
            "type": "ref",
            "ref": "com.atproto.repo.strongRef"
          }
        }
      }
    }
  }
}
```
