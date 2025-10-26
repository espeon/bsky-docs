---
title: app.bsky.embed.record
description: A representation of a record embedded in a Bluesky record (eg, a post). For example, a quote-post, or sharing a feed generator record.
---
A representation of a record embedded in a Bluesky record (eg, a post). For example, a quote-post, or sharing a feed generator record.

**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `record` | [`com.atproto.repo.strongRef`](/com/atproto/repo/strongref#undefined) | ✅  |  |  |

---

<a name="view"></a>
### `view`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `record` | Union of:<br/>&nbsp;&nbsp;[`#viewRecord`](#viewrecord)<br/>&nbsp;&nbsp;[`#viewNotFound`](#viewnotfound)<br/>&nbsp;&nbsp;[`#viewBlocked`](#viewblocked)<br/>&nbsp;&nbsp;[`#viewDetached`](#viewdetached)<br/>&nbsp;&nbsp;[`app.bsky.feed.defs#generatorView`](/app/bsky/feed/defs#generatorView)<br/>&nbsp;&nbsp;[`app.bsky.graph.defs#listView`](/app/bsky/graph/defs#listView)<br/>&nbsp;&nbsp;[`app.bsky.labeler.defs#labelerView`](/app/bsky/labeler/defs#labelerView)<br/>&nbsp;&nbsp;[`app.bsky.graph.defs#starterPackViewBasic`](/app/bsky/graph/defs#starterPackViewBasic) | ✅  |  |  |

---

<a name="viewrecord"></a>
### `viewRecord`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `uri` | `string` | ✅  |  | Format: `at-uri` |
| `cid` | `string` | ✅  |  | Format: `cid` |
| `author` | [`app.bsky.actor.defs#profileViewBasic`](/app/bsky/actor/defs#profileViewBasic) | ✅  |  |  |
| `value` | `unknown` | ✅  | The record data itself. |  |
| `labels` | Array of [`com.atproto.label.defs#label`](/com/atproto/label/defs#label) | ❌  |  |  |
| `replyCount` | `integer` | ❌  |  |  |
| `repostCount` | `integer` | ❌  |  |  |
| `likeCount` | `integer` | ❌  |  |  |
| `quoteCount` | `integer` | ❌  |  |  |
| `embeds` | Array of Union of:<br/>&nbsp;&nbsp;[`app.bsky.embed.images#view`](/app/bsky/embed/images#view)<br/>&nbsp;&nbsp;[`app.bsky.embed.video#view`](/app/bsky/embed/video#view)<br/>&nbsp;&nbsp;[`app.bsky.embed.external#view`](/app/bsky/embed/external#view)<br/>&nbsp;&nbsp;[`app.bsky.embed.record#view`](/app/bsky/embed/record#view)<br/>&nbsp;&nbsp;[`app.bsky.embed.recordWithMedia#view`](/app/bsky/embed/recordwithmedia#view) | ❌  |  |  |
| `indexedAt` | `string` | ✅  |  | Format: `datetime` |

---

<a name="viewnotfound"></a>
### `viewNotFound`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `uri` | `string` | ✅  |  | Format: `at-uri` |
| `notFound` | `boolean` | ✅  |  | Const: `true` |

---

<a name="viewblocked"></a>
### `viewBlocked`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `uri` | `string` | ✅  |  | Format: `at-uri` |
| `blocked` | `boolean` | ✅  |  | Const: `true` |
| `author` | [`app.bsky.feed.defs#blockedAuthor`](/app/bsky/feed/defs#blockedAuthor) | ✅  |  |  |

---

<a name="viewdetached"></a>
### `viewDetached`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `uri` | `string` | ✅  |  | Format: `at-uri` |
| `detached` | `boolean` | ✅  |  | Const: `true` |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.embed.record",
  "description": "A representation of a record embedded in a Bluesky record (eg, a post). For example, a quote-post, or sharing a feed generator record.",
  "defs": {
    "main": {
      "type": "object",
      "required": [
        "record"
      ],
      "properties": {
        "record": {
          "type": "ref",
          "ref": "com.atproto.repo.strongRef"
        }
      }
    },
    "view": {
      "type": "object",
      "required": [
        "record"
      ],
      "properties": {
        "record": {
          "type": "union",
          "refs": [
            "#viewRecord",
            "#viewNotFound",
            "#viewBlocked",
            "#viewDetached",
            "app.bsky.feed.defs#generatorView",
            "app.bsky.graph.defs#listView",
            "app.bsky.labeler.defs#labelerView",
            "app.bsky.graph.defs#starterPackViewBasic"
          ]
        }
      }
    },
    "viewRecord": {
      "type": "object",
      "required": [
        "uri",
        "cid",
        "author",
        "value",
        "indexedAt"
      ],
      "properties": {
        "uri": {
          "type": "string",
          "format": "at-uri"
        },
        "cid": {
          "type": "string",
          "format": "cid"
        },
        "author": {
          "type": "ref",
          "ref": "app.bsky.actor.defs#profileViewBasic"
        },
        "value": {
          "type": "unknown",
          "description": "The record data itself."
        },
        "labels": {
          "type": "array",
          "items": {
            "type": "ref",
            "ref": "com.atproto.label.defs#label"
          }
        },
        "replyCount": {
          "type": "integer"
        },
        "repostCount": {
          "type": "integer"
        },
        "likeCount": {
          "type": "integer"
        },
        "quoteCount": {
          "type": "integer"
        },
        "embeds": {
          "type": "array",
          "items": {
            "type": "union",
            "refs": [
              "app.bsky.embed.images#view",
              "app.bsky.embed.video#view",
              "app.bsky.embed.external#view",
              "app.bsky.embed.record#view",
              "app.bsky.embed.recordWithMedia#view"
            ]
          }
        },
        "indexedAt": {
          "type": "string",
          "format": "datetime"
        }
      }
    },
    "viewNotFound": {
      "type": "object",
      "required": [
        "uri",
        "notFound"
      ],
      "properties": {
        "uri": {
          "type": "string",
          "format": "at-uri"
        },
        "notFound": {
          "type": "boolean",
          "const": true
        }
      }
    },
    "viewBlocked": {
      "type": "object",
      "required": [
        "uri",
        "blocked",
        "author"
      ],
      "properties": {
        "uri": {
          "type": "string",
          "format": "at-uri"
        },
        "blocked": {
          "type": "boolean",
          "const": true
        },
        "author": {
          "type": "ref",
          "ref": "app.bsky.feed.defs#blockedAuthor"
        }
      }
    },
    "viewDetached": {
      "type": "object",
      "required": [
        "uri",
        "detached"
      ],
      "properties": {
        "uri": {
          "type": "string",
          "format": "at-uri"
        },
        "detached": {
          "type": "boolean",
          "const": true
        }
      }
    }
  }
}
```
