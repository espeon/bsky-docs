---
title: app.bsky.feed.post
description: Reference for the app.bsky.feed.post lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `record`

Record containing a Bluesky post.

**Record Key:** `tid`

**Record Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `text` | `string` | ✅  | The primary post content. May be an empty string, if there are embeds. | Max Length: 3000<br/>Max Graphemes: 300 |
| `entities` | Array of [`#entity`](#entity) | ❌  | DEPRECATED: replaced by app.bsky.richtext.facet. |  |
| `facets` | Array of [`app.bsky.richtext.facet`](/app/bsky/richtext/facet#undefined) | ❌  | Annotations of text (mentions, URLs, hashtags, etc) |  |
| `reply` | [`#replyRef`](#replyref) | ❌  |  |  |
| `embed` | Union of:<br/>&nbsp;&nbsp;[`app.bsky.embed.images`](/app/bsky/embed/images#undefined)<br/>&nbsp;&nbsp;[`app.bsky.embed.video`](/app/bsky/embed/video#undefined)<br/>&nbsp;&nbsp;[`app.bsky.embed.external`](/app/bsky/embed/external#undefined)<br/>&nbsp;&nbsp;[`app.bsky.embed.record`](/app/bsky/embed/record#undefined)<br/>&nbsp;&nbsp;[`app.bsky.embed.recordWithMedia`](/app/bsky/embed/recordwithmedia#undefined) | ❌  |  |  |
| `langs` | Array of `string` | ❌  | Indicates human language of post primary text content. | Max Items: 3 |
| `labels` | Union of:<br/>&nbsp;&nbsp;[`com.atproto.label.defs#selfLabels`](/com/atproto/label/defs#selfLabels) | ❌  | Self-label values for this post. Effectively content warnings. |  |
| `tags` | Array of `string` | ❌  | Additional hashtags, in addition to any included in post text and facets. | Max Items: 8 |
| `createdAt` | `string` | ✅  | Client-declared timestamp when this post was originally created. | Format: `datetime` |

---

<a name="replyref"></a>
### `replyRef`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `root` | [`com.atproto.repo.strongRef`](/com/atproto/repo/strongref#undefined) | ✅  |  |  |
| `parent` | [`com.atproto.repo.strongRef`](/com/atproto/repo/strongref#undefined) | ✅  |  |  |

---

<a name="entity"></a>
### `entity`

**Type:** `object`

Deprecated: use facets instead.

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `index` | [`#textSlice`](#textslice) | ✅  |  |  |
| `type` | `string` | ✅  | Expected values are 'mention' and 'link'. |  |
| `value` | `string` | ✅  |  |  |

---

<a name="textslice"></a>
### `textSlice`

**Type:** `object`

Deprecated. Use app.bsky.richtext instead -- A text segment. Start is inclusive, end is exclusive. Indices are for utf16-encoded strings.

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `start` | `integer` | ✅  |  | Min: 0 |
| `end` | `integer` | ✅  |  | Min: 0 |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.feed.post",
  "defs": {
    "main": {
      "type": "record",
      "description": "Record containing a Bluesky post.",
      "key": "tid",
      "record": {
        "type": "object",
        "required": [
          "text",
          "createdAt"
        ],
        "properties": {
          "text": {
            "type": "string",
            "maxLength": 3000,
            "maxGraphemes": 300,
            "description": "The primary post content. May be an empty string, if there are embeds."
          },
          "entities": {
            "type": "array",
            "description": "DEPRECATED: replaced by app.bsky.richtext.facet.",
            "items": {
              "type": "ref",
              "ref": "#entity"
            }
          },
          "facets": {
            "type": "array",
            "description": "Annotations of text (mentions, URLs, hashtags, etc)",
            "items": {
              "type": "ref",
              "ref": "app.bsky.richtext.facet"
            }
          },
          "reply": {
            "type": "ref",
            "ref": "#replyRef"
          },
          "embed": {
            "type": "union",
            "refs": [
              "app.bsky.embed.images",
              "app.bsky.embed.video",
              "app.bsky.embed.external",
              "app.bsky.embed.record",
              "app.bsky.embed.recordWithMedia"
            ]
          },
          "langs": {
            "type": "array",
            "description": "Indicates human language of post primary text content.",
            "maxLength": 3,
            "items": {
              "type": "string",
              "format": "language"
            }
          },
          "labels": {
            "type": "union",
            "description": "Self-label values for this post. Effectively content warnings.",
            "refs": [
              "com.atproto.label.defs#selfLabels"
            ]
          },
          "tags": {
            "type": "array",
            "description": "Additional hashtags, in addition to any included in post text and facets.",
            "maxLength": 8,
            "items": {
              "type": "string",
              "maxLength": 640,
              "maxGraphemes": 64
            }
          },
          "createdAt": {
            "type": "string",
            "format": "datetime",
            "description": "Client-declared timestamp when this post was originally created."
          }
        }
      }
    },
    "replyRef": {
      "type": "object",
      "required": [
        "root",
        "parent"
      ],
      "properties": {
        "root": {
          "type": "ref",
          "ref": "com.atproto.repo.strongRef"
        },
        "parent": {
          "type": "ref",
          "ref": "com.atproto.repo.strongRef"
        }
      }
    },
    "entity": {
      "type": "object",
      "description": "Deprecated: use facets instead.",
      "required": [
        "index",
        "type",
        "value"
      ],
      "properties": {
        "index": {
          "type": "ref",
          "ref": "#textSlice"
        },
        "type": {
          "type": "string",
          "description": "Expected values are 'mention' and 'link'."
        },
        "value": {
          "type": "string"
        }
      }
    },
    "textSlice": {
      "type": "object",
      "description": "Deprecated. Use app.bsky.richtext instead -- A text segment. Start is inclusive, end is exclusive. Indices are for utf16-encoded strings.",
      "required": [
        "start",
        "end"
      ],
      "properties": {
        "start": {
          "type": "integer",
          "minimum": 0
        },
        "end": {
          "type": "integer",
          "minimum": 0
        }
      }
    }
  }
}
```
