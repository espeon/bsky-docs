---
title: app.bsky.feed.like
description: Reference for the app.bsky.feed.like lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `record`

Record declaring a 'like' of a piece of subject content.

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
  "id": "app.bsky.feed.like",
  "defs": {
    "main": {
      "type": "record",
      "description": "Record declaring a 'like' of a piece of subject content.",
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
