---
title: app.bsky.embed.recordWithMedia
description: A representation of a record embedded in a Bluesky record (eg, a post), alongside other compatible embeds. For example, a quote post and image, or a quote post and external URL card.
---
A representation of a record embedded in a Bluesky record (eg, a post), alongside other compatible embeds. For example, a quote post and image, or a quote post and external URL card.

**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `record` | [`app.bsky.embed.record`](/lexicons/app/bsky/embed/record#undefined) | ✅  |  |  |
| `media` | Union of:<br/>&nbsp;&nbsp;[`app.bsky.embed.images`](/lexicons/app/bsky/embed/images#undefined)<br/>&nbsp;&nbsp;[`app.bsky.embed.video`](/lexicons/app/bsky/embed/video#undefined)<br/>&nbsp;&nbsp;[`app.bsky.embed.external`](/lexicons/app/bsky/embed/external#undefined) | ✅  |  |  |

---

<a name="view"></a>
### `view`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `record` | [`app.bsky.embed.record#view`](/lexicons/app/bsky/embed/record#view) | ✅  |  |  |
| `media` | Union of:<br/>&nbsp;&nbsp;[`app.bsky.embed.images#view`](/lexicons/app/bsky/embed/images#view)<br/>&nbsp;&nbsp;[`app.bsky.embed.video#view`](/lexicons/app/bsky/embed/video#view)<br/>&nbsp;&nbsp;[`app.bsky.embed.external#view`](/lexicons/app/bsky/embed/external#view) | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.embed.recordWithMedia",
  "description": "A representation of a record embedded in a Bluesky record (eg, a post), alongside other compatible embeds. For example, a quote post and image, or a quote post and external URL card.",
  "defs": {
    "main": {
      "type": "object",
      "required": [
        "record",
        "media"
      ],
      "properties": {
        "record": {
          "type": "ref",
          "ref": "app.bsky.embed.record"
        },
        "media": {
          "type": "union",
          "refs": [
            "app.bsky.embed.images",
            "app.bsky.embed.video",
            "app.bsky.embed.external"
          ]
        }
      }
    },
    "view": {
      "type": "object",
      "required": [
        "record",
        "media"
      ],
      "properties": {
        "record": {
          "type": "ref",
          "ref": "app.bsky.embed.record#view"
        },
        "media": {
          "type": "union",
          "refs": [
            "app.bsky.embed.images#view",
            "app.bsky.embed.video#view",
            "app.bsky.embed.external#view"
          ]
        }
      }
    }
  }
}
```
