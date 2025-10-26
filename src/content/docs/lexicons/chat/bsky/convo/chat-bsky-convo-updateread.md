---
title: chat.bsky.convo.updateRead
description: Reference for the chat.bsky.convo.updateRead lexicon
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
| `messageId` | `string` | ❌  |  |  |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `convo` | [`chat.bsky.convo.defs#convoView`](/lexicons/chat/bsky/convo/chat-bsky-convo-defs#convoview) | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "chat.bsky.convo.updateRead",
  "defs": {
    "main": {
      "type": "procedure",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "convoId"
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
          "type": "object",
          "required": [
            "convo"
          ],
          "properties": {
            "convo": {
              "type": "ref",
              "ref": "chat.bsky.convo.defs#convoView"
            }
          }
        }
      }
    }
  }
}
```
