---
title: chat.bsky.convo.getMessages
description: Reference for the chat.bsky.convo.getMessages lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `convoId` | `string` | ✅  |  |  |
| `limit` | `integer` | ❌  |  | Min: 1<br/>Max: 100<br/>Default: `50` |
| `cursor` | `string` | ❌  |  |  |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `cursor` | `string` | ❌  |  |  |
| `messages` | Array of Union of:<br/>&nbsp;&nbsp;[`chat.bsky.convo.defs#messageView`](/lexicons/chat/bsky/convo/defs#messageView)<br/>&nbsp;&nbsp;[`chat.bsky.convo.defs#deletedMessageView`](/lexicons/chat/bsky/convo/defs#deletedMessageView) | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "chat.bsky.convo.getMessages",
  "defs": {
    "main": {
      "type": "query",
      "parameters": {
        "type": "params",
        "required": [
          "convoId"
        ],
        "properties": {
          "convoId": {
            "type": "string"
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
            "messages"
          ],
          "properties": {
            "cursor": {
              "type": "string"
            },
            "messages": {
              "type": "array",
              "items": {
                "type": "union",
                "refs": [
                  "chat.bsky.convo.defs#messageView",
                  "chat.bsky.convo.defs#deletedMessageView"
                ]
              }
            }
          }
        }
      }
    }
  }
}
```
