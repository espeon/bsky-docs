---
title: chat.bsky.convo.sendMessage
description: Reference for the chat.bsky.convo.sendMessage lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `convoId` | `string` | ✅  |  |  |
| `message` | [`chat.bsky.convo.defs#messageInput`](/lexicons/chat/bsky/convo/chat-bsky-convo-defs#messageinput) | ✅  |  |  |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** [`chat.bsky.convo.defs#messageView`](/lexicons/chat/bsky/convo/chat-bsky-convo-defs#messageview)



---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "chat.bsky.convo.sendMessage",
  "defs": {
    "main": {
      "type": "procedure",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "convoId",
            "message"
          ],
          "properties": {
            "convoId": {
              "type": "string"
            },
            "message": {
              "type": "ref",
              "ref": "chat.bsky.convo.defs#messageInput"
            }
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "ref",
          "ref": "chat.bsky.convo.defs#messageView"
        }
      }
    }
  }
}
```
