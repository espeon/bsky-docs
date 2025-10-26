---
title: chat.bsky.convo.deleteMessageForSelf
description: Reference for the chat.bsky.convo.deleteMessageForSelf lexicon
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
| `messageId` | `string` | ✅  |  |  |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** [`chat.bsky.convo.defs#deletedMessageView`](/chat/bsky/convo/defs#deletedMessageView)



---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "chat.bsky.convo.deleteMessageForSelf",
  "defs": {
    "main": {
      "type": "procedure",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "convoId",
            "messageId"
          ],
          "properties": {
            "convoId": {
              "type": "string"
            },
            "messageId": {
              "type": "string"
            }
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "ref",
          "ref": "chat.bsky.convo.defs#deletedMessageView"
        }
      }
    }
  }
}
```
