---
title: chat.bsky.moderation.getMessageContext
description: Reference for the chat.bsky.moderation.getMessageContext lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `convoId` | `string` | ❌  | Conversation that the message is from. NOTE: this field will eventually be required. |  |
| `messageId` | `string` | ✅  |  |  |
| `before` | `integer` | ❌  |  | Default: `5` |
| `after` | `integer` | ❌  |  | Default: `5` |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `messages` | Array of Union of:<br/>&nbsp;&nbsp;[`chat.bsky.convo.defs#messageView`](/lexicons/chat/bsky/convo/chat-bsky-convo-defs#messageview)<br/>&nbsp;&nbsp;[`chat.bsky.convo.defs#deletedMessageView`](/lexicons/chat/bsky/convo/chat-bsky-convo-defs#deletedmessageview) | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "chat.bsky.moderation.getMessageContext",
  "defs": {
    "main": {
      "type": "query",
      "parameters": {
        "type": "params",
        "required": [
          "messageId"
        ],
        "properties": {
          "convoId": {
            "type": "string",
            "description": "Conversation that the message is from. NOTE: this field will eventually be required."
          },
          "messageId": {
            "type": "string"
          },
          "before": {
            "type": "integer",
            "default": 5
          },
          "after": {
            "type": "integer",
            "default": 5
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
