---
title: app.bsky.embed.external
description: Reference for the app.bsky.embed.external lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `object`

A representation of some externally linked content (eg, a URL and 'card'), embedded in a Bluesky record (eg, a post).

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `external` | [`#external`](#external) | ✅  |  |  |

---

<a name="external"></a>
### `external`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `uri` | `string` | ✅  |  | Format: `uri` |
| `title` | `string` | ✅  |  |  |
| `description` | `string` | ✅  |  |  |
| `thumb` | `blob` | ❌  |  | Accept: `image/*`<br/>Max Size: 1000000 bytes |

---

<a name="view"></a>
### `view`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `external` | [`#viewExternal`](#viewexternal) | ✅  |  |  |

---

<a name="viewexternal"></a>
### `viewExternal`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `uri` | `string` | ✅  |  | Format: `uri` |
| `title` | `string` | ✅  |  |  |
| `description` | `string` | ✅  |  |  |
| `thumb` | `string` | ❌  |  | Format: `uri` |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.embed.external",
  "defs": {
    "main": {
      "type": "object",
      "description": "A representation of some externally linked content (eg, a URL and 'card'), embedded in a Bluesky record (eg, a post).",
      "required": [
        "external"
      ],
      "properties": {
        "external": {
          "type": "ref",
          "ref": "#external"
        }
      }
    },
    "external": {
      "type": "object",
      "required": [
        "uri",
        "title",
        "description"
      ],
      "properties": {
        "uri": {
          "type": "string",
          "format": "uri"
        },
        "title": {
          "type": "string"
        },
        "description": {
          "type": "string"
        },
        "thumb": {
          "type": "blob",
          "accept": [
            "image/*"
          ],
          "maxSize": 1000000
        }
      }
    },
    "view": {
      "type": "object",
      "required": [
        "external"
      ],
      "properties": {
        "external": {
          "type": "ref",
          "ref": "#viewExternal"
        }
      }
    },
    "viewExternal": {
      "type": "object",
      "required": [
        "uri",
        "title",
        "description"
      ],
      "properties": {
        "uri": {
          "type": "string",
          "format": "uri"
        },
        "title": {
          "type": "string"
        },
        "description": {
          "type": "string"
        },
        "thumb": {
          "type": "string",
          "format": "uri"
        }
      }
    }
  }
}
```
