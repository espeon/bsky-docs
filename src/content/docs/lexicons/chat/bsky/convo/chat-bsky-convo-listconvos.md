---
title: chat.bsky.convo.listConvos
description: Reference for the chat.bsky.convo.listConvos lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `limit` | `integer` | ❌  |  | Min: 1<br/>Max: 100<br/>Default: `50` |
| `cursor` | `string` | ❌  |  |  |
| `readState` | `string` | ❌  |  | Known Values: `unread` |
| `status` | `string` | ❌  |  | Known Values: `request`, `accepted` |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `cursor` | `string` | ❌  |  |  |
| `convos` | Array of [`chat.bsky.convo.defs#convoView`](/lexicons/chat/bsky/convo/defs#convoView) | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "chat.bsky.convo.listConvos",
  "defs": {
    "main": {
      "type": "query",
      "parameters": {
        "type": "params",
        "properties": {
          "limit": {
            "type": "integer",
            "minimum": 1,
            "maximum": 100,
            "default": 50
          },
          "cursor": {
            "type": "string"
          },
          "readState": {
            "type": "string",
            "knownValues": [
              "unread"
            ]
          },
          "status": {
            "type": "string",
            "knownValues": [
              "request",
              "accepted"
            ]
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "convos"
          ],
          "properties": {
            "cursor": {
              "type": "string"
            },
            "convos": {
              "type": "array",
              "items": {
                "type": "ref",
                "ref": "chat.bsky.convo.defs#convoView"
              }
            }
          }
        }
      }
    }
  }
}
```
