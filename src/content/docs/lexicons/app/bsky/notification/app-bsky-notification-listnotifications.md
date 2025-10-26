---
title: app.bsky.notification.listNotifications
description: Reference for the app.bsky.notification.listNotifications lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Enumerate notifications for the requesting account. Requires auth.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `reasons` | Array of `string` | ❌  | Notification reasons to include in response. |  |
| `limit` | `integer` | ❌  |  | Min: 1<br/>Max: 100<br/>Default: `50` |
| `priority` | `boolean` | ❌  |  |  |
| `cursor` | `string` | ❌  |  |  |
| `seenAt` | `string` | ❌  |  | Format: `datetime` |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `cursor` | `string` | ❌  |  |  |
| `notifications` | Array of [`#notification`](#notification) | ✅  |  |  |
| `priority` | `boolean` | ❌  |  |  |
| `seenAt` | `string` | ❌  |  | Format: `datetime` |

---

<a name="notification"></a>
### `notification`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `uri` | `string` | ✅  |  | Format: `at-uri` |
| `cid` | `string` | ✅  |  | Format: `cid` |
| `author` | [`app.bsky.actor.defs#profileView`](/app/bsky/actor/defs#profileView) | ✅  |  |  |
| `reason` | `string` | ✅  | The reason why this notification was delivered - e.g. your post was liked, or you received a new follower. | Known Values: `like`, `repost`, `follow`, `mention`, `reply`, `quote`, `starterpack-joined`, `verified`, `unverified`, `like-via-repost`, `repost-via-repost`, `subscribed-post` |
| `reasonSubject` | `string` | ❌  |  | Format: `at-uri` |
| `record` | `unknown` | ✅  |  |  |
| `isRead` | `boolean` | ✅  |  |  |
| `indexedAt` | `string` | ✅  |  | Format: `datetime` |
| `labels` | Array of [`com.atproto.label.defs#label`](/com/atproto/label/defs#label) | ❌  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.notification.listNotifications",
  "defs": {
    "main": {
      "type": "query",
      "description": "Enumerate notifications for the requesting account. Requires auth.",
      "parameters": {
        "type": "params",
        "properties": {
          "reasons": {
            "description": "Notification reasons to include in response.",
            "type": "array",
            "items": {
              "type": "string",
              "description": "A reason that matches the reason property of #notification."
            }
          },
          "limit": {
            "type": "integer",
            "minimum": 1,
            "maximum": 100,
            "default": 50
          },
          "priority": {
            "type": "boolean"
          },
          "cursor": {
            "type": "string"
          },
          "seenAt": {
            "type": "string",
            "format": "datetime"
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "notifications"
          ],
          "properties": {
            "cursor": {
              "type": "string"
            },
            "notifications": {
              "type": "array",
              "items": {
                "type": "ref",
                "ref": "#notification"
              }
            },
            "priority": {
              "type": "boolean"
            },
            "seenAt": {
              "type": "string",
              "format": "datetime"
            }
          }
        }
      }
    },
    "notification": {
      "type": "object",
      "required": [
        "uri",
        "cid",
        "author",
        "reason",
        "record",
        "isRead",
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
          "ref": "app.bsky.actor.defs#profileView"
        },
        "reason": {
          "type": "string",
          "description": "The reason why this notification was delivered - e.g. your post was liked, or you received a new follower.",
          "knownValues": [
            "like",
            "repost",
            "follow",
            "mention",
            "reply",
            "quote",
            "starterpack-joined",
            "verified",
            "unverified",
            "like-via-repost",
            "repost-via-repost",
            "subscribed-post"
          ]
        },
        "reasonSubject": {
          "type": "string",
          "format": "at-uri"
        },
        "record": {
          "type": "unknown"
        },
        "isRead": {
          "type": "boolean"
        },
        "indexedAt": {
          "type": "string",
          "format": "datetime"
        },
        "labels": {
          "type": "array",
          "items": {
            "type": "ref",
            "ref": "com.atproto.label.defs#label"
          }
        }
      }
    }
  }
}
```
