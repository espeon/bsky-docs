---
title: app.bsky.embed.video
description: A video embedded in a Bluesky record (eg, a post).
---
A video embedded in a Bluesky record (eg, a post).

**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `video` | `blob` | ✅  | The mp4 video file. May be up to 100mb, formerly limited to 50mb. | Accept: `video/mp4`<br/>Max Size: 100000000 bytes |
| `captions` | Array of [`#caption`](#caption) | ❌  |  | Max Items: 20 |
| `alt` | `string` | ❌  | Alt text description of the video, for accessibility. | Max Length: 10000<br/>Max Graphemes: 1000 |
| `aspectRatio` | [`app.bsky.embed.defs#aspectRatio`](/lexicons/app/bsky/embed/defs#aspectRatio) | ❌  |  |  |

---

<a name="caption"></a>
### `caption`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `lang` | `string` | ✅  |  | Format: `language` |
| `file` | `blob` | ✅  |  | Accept: `text/vtt`<br/>Max Size: 20000 bytes |

---

<a name="view"></a>
### `view`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `cid` | `string` | ✅  |  | Format: `cid` |
| `playlist` | `string` | ✅  |  | Format: `uri` |
| `thumbnail` | `string` | ❌  |  | Format: `uri` |
| `alt` | `string` | ❌  |  | Max Length: 10000<br/>Max Graphemes: 1000 |
| `aspectRatio` | [`app.bsky.embed.defs#aspectRatio`](/lexicons/app/bsky/embed/defs#aspectRatio) | ❌  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.embed.video",
  "description": "A video embedded in a Bluesky record (eg, a post).",
  "defs": {
    "main": {
      "type": "object",
      "required": [
        "video"
      ],
      "properties": {
        "video": {
          "type": "blob",
          "description": "The mp4 video file. May be up to 100mb, formerly limited to 50mb.",
          "accept": [
            "video/mp4"
          ],
          "maxSize": 100000000
        },
        "captions": {
          "type": "array",
          "items": {
            "type": "ref",
            "ref": "#caption"
          },
          "maxLength": 20
        },
        "alt": {
          "type": "string",
          "description": "Alt text description of the video, for accessibility.",
          "maxGraphemes": 1000,
          "maxLength": 10000
        },
        "aspectRatio": {
          "type": "ref",
          "ref": "app.bsky.embed.defs#aspectRatio"
        }
      }
    },
    "caption": {
      "type": "object",
      "required": [
        "lang",
        "file"
      ],
      "properties": {
        "lang": {
          "type": "string",
          "format": "language"
        },
        "file": {
          "type": "blob",
          "accept": [
            "text/vtt"
          ],
          "maxSize": 20000
        }
      }
    },
    "view": {
      "type": "object",
      "required": [
        "cid",
        "playlist"
      ],
      "properties": {
        "cid": {
          "type": "string",
          "format": "cid"
        },
        "playlist": {
          "type": "string",
          "format": "uri"
        },
        "thumbnail": {
          "type": "string",
          "format": "uri"
        },
        "alt": {
          "type": "string",
          "maxGraphemes": 1000,
          "maxLength": 10000
        },
        "aspectRatio": {
          "type": "ref",
          "ref": "app.bsky.embed.defs#aspectRatio"
        }
      }
    }
  }
}
```
