---
title: chat.bsky.convo.getConvo
description: Reference for the chat.bsky.convo.getConvo lexicon
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
  "id": "chat.bsky.convo.getConvo",
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
