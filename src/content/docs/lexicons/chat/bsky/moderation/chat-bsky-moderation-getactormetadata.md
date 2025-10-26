---
title: chat.bsky.moderation.getActorMetadata
description: Reference for the chat.bsky.moderation.getActorMetadata lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `actor` | `string` | ✅  |  | Format: `did` |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `day` | [`#metadata`](#metadata) | ✅  |  |  |
| `month` | [`#metadata`](#metadata) | ✅  |  |  |
| `all` | [`#metadata`](#metadata) | ✅  |  |  |

---

<a name="metadata"></a>
### `metadata`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `messagesSent` | `integer` | ✅  |  |  |
| `messagesReceived` | `integer` | ✅  |  |  |
| `convos` | `integer` | ✅  |  |  |
| `convosStarted` | `integer` | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "chat.bsky.moderation.getActorMetadata",
  "defs": {
    "main": {
      "type": "query",
      "parameters": {
        "type": "params",
        "required": [
          "actor"
        ],
        "properties": {
          "actor": {
            "type": "string",
            "format": "did"
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "day",
            "month",
            "all"
          ],
          "properties": {
            "day": {
              "type": "ref",
              "ref": "#metadata"
            },
            "month": {
              "type": "ref",
              "ref": "#metadata"
            },
            "all": {
              "type": "ref",
              "ref": "#metadata"
            }
          }
        }
      }
    },
    "metadata": {
      "type": "object",
      "required": [
        "messagesSent",
        "messagesReceived",
        "convos",
        "convosStarted"
      ],
      "properties": {
        "messagesSent": {
          "type": "integer"
        },
        "messagesReceived": {
          "type": "integer"
        },
        "convos": {
          "type": "integer"
        },
        "convosStarted": {
          "type": "integer"
        }
      }
    }
  }
}
```
