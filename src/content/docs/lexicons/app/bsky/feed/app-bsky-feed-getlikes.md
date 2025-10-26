---
title: app.bsky.feed.getLikes
description: Reference for the app.bsky.feed.getLikes lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Get like records which reference a subject (by AT-URI and CID).

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `uri` | `string` | ✅  | AT-URI of the subject (eg, a post record). | Format: `at-uri` |
| `cid` | `string` | ❌  | CID of the subject record (aka, specific version of record), to filter likes. | Format: `cid` |
| `limit` | `integer` | ❌  |  | Min: 1<br/>Max: 100<br/>Default: `50` |
| `cursor` | `string` | ❌  |  |  |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `uri` | `string` | ✅  |  | Format: `at-uri` |
| `cid` | `string` | ❌  |  | Format: `cid` |
| `cursor` | `string` | ❌  |  |  |
| `likes` | Array of [`#like`](#like) | ✅  |  |  |

---

<a name="like"></a>
### `like`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `indexedAt` | `string` | ✅  |  | Format: `datetime` |
| `createdAt` | `string` | ✅  |  | Format: `datetime` |
| `actor` | [`app.bsky.actor.defs#profileView`](/lexicons/app/bsky/actor/defs#profileView) | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.feed.getLikes",
  "defs": {
    "main": {
      "type": "query",
      "description": "Get like records which reference a subject (by AT-URI and CID).",
      "parameters": {
        "type": "params",
        "required": [
          "uri"
        ],
        "properties": {
          "uri": {
            "type": "string",
            "format": "at-uri",
            "description": "AT-URI of the subject (eg, a post record)."
          },
          "cid": {
            "type": "string",
            "format": "cid",
            "description": "CID of the subject record (aka, specific version of record), to filter likes."
          },
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
            "uri",
            "likes"
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
            "cursor": {
              "type": "string"
            },
            "likes": {
              "type": "array",
              "items": {
                "type": "ref",
                "ref": "#like"
              }
            }
          }
        }
      }
    },
    "like": {
      "type": "object",
      "required": [
        "indexedAt",
        "createdAt",
        "actor"
      ],
      "properties": {
        "indexedAt": {
          "type": "string",
          "format": "datetime"
        },
        "createdAt": {
          "type": "string",
          "format": "datetime"
        },
        "actor": {
          "type": "ref",
          "ref": "app.bsky.actor.defs#profileView"
        }
      }
    }
  }
}
```
