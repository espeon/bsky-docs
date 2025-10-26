---
title: app.bsky.embed.images
description: A set of images embedded in a Bluesky record (eg, a post).
---
A set of images embedded in a Bluesky record (eg, a post).

**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `images` | Array of [`#image`](#image) | ✅  |  | Max Items: 4 |

---

<a name="image"></a>
### `image`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `image` | `blob` | ✅  |  | Accept: `image/*`<br/>Max Size: 1000000 bytes |
| `alt` | `string` | ✅  | Alt text description of the image, for accessibility. |  |
| `aspectRatio` | [`app.bsky.embed.defs#aspectRatio`](/lexicons/app/bsky/embed/defs#aspectRatio) | ❌  |  |  |

---

<a name="view"></a>
### `view`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `images` | Array of [`#viewImage`](#viewimage) | ✅  |  | Max Items: 4 |

---

<a name="viewimage"></a>
### `viewImage`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `thumb` | `string` | ✅  | Fully-qualified URL where a thumbnail of the image can be fetched. For example, CDN location provided by the App View. | Format: `uri` |
| `fullsize` | `string` | ✅  | Fully-qualified URL where a large version of the image can be fetched. May or may not be the exact original blob. For example, CDN location provided by the App View. | Format: `uri` |
| `alt` | `string` | ✅  | Alt text description of the image, for accessibility. |  |
| `aspectRatio` | [`app.bsky.embed.defs#aspectRatio`](/lexicons/app/bsky/embed/defs#aspectRatio) | ❌  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.embed.images",
  "description": "A set of images embedded in a Bluesky record (eg, a post).",
  "defs": {
    "main": {
      "type": "object",
      "required": [
        "images"
      ],
      "properties": {
        "images": {
          "type": "array",
          "items": {
            "type": "ref",
            "ref": "#image"
          },
          "maxLength": 4
        }
      }
    },
    "image": {
      "type": "object",
      "required": [
        "image",
        "alt"
      ],
      "properties": {
        "image": {
          "type": "blob",
          "accept": [
            "image/*"
          ],
          "maxSize": 1000000
        },
        "alt": {
          "type": "string",
          "description": "Alt text description of the image, for accessibility."
        },
        "aspectRatio": {
          "type": "ref",
          "ref": "app.bsky.embed.defs#aspectRatio"
        }
      }
    },
    "view": {
      "type": "object",
      "required": [
        "images"
      ],
      "properties": {
        "images": {
          "type": "array",
          "items": {
            "type": "ref",
            "ref": "#viewImage"
          },
          "maxLength": 4
        }
      }
    },
    "viewImage": {
      "type": "object",
      "required": [
        "thumb",
        "fullsize",
        "alt"
      ],
      "properties": {
        "thumb": {
          "type": "string",
          "format": "uri",
          "description": "Fully-qualified URL where a thumbnail of the image can be fetched. For example, CDN location provided by the App View."
        },
        "fullsize": {
          "type": "string",
          "format": "uri",
          "description": "Fully-qualified URL where a large version of the image can be fetched. May or may not be the exact original blob. For example, CDN location provided by the App View."
        },
        "alt": {
          "type": "string",
          "description": "Alt text description of the image, for accessibility."
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
