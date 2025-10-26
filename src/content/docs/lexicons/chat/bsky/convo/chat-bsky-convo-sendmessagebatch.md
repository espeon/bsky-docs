---
title: chat.bsky.convo.sendMessageBatch
description: Reference for the chat.bsky.convo.sendMessageBatch lexicon
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
| `items` | Array of [`#batchItem`](#batchitem) | ✅  |  | Max Items: 100 |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `items` | Array of [`chat.bsky.convo.defs#messageView`](lexicons/chat/bsky/convo/defs#messageView) | ✅  |  |  |

---

<a name="batchitem"></a>
### `batchItem`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `convoId` | `string` | ✅  |  |  |
| `message` | [`chat.bsky.convo.defs#messageInput`](lexicons/chat/bsky/convo/defs#messageInput) | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "chat.bsky.convo.sendMessageBatch",
  "defs": {
    "main": {
      "type": "procedure",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "items"
          ],
          "properties": {
            "items": {
              "type": "array",
              "maxLength": 100,
              "items": {
                "type": "ref",
                "ref": "#batchItem"
              }
            }
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "items"
          ],
          "properties": {
            "items": {
              "type": "array",
              "items": {
                "type": "ref",
                "ref": "chat.bsky.convo.defs#messageView"
              }
            }
          }
        }
      }
    },
    "batchItem": {
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
  }
}
```
