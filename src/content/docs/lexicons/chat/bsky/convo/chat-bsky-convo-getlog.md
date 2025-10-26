---
title: chat.bsky.convo.getLog
description: Reference for the chat.bsky.convo.getLog lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `cursor` | `string` | ❌  |  |  |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `cursor` | `string` | ❌  |  |  |
| `logs` | Array of Union of:<br/>&nbsp;&nbsp;[`chat.bsky.convo.defs#logBeginConvo`](/lexicons/chat/bsky/convo/chat-bsky-convo-defs#logbeginconvo)<br/>&nbsp;&nbsp;[`chat.bsky.convo.defs#logAcceptConvo`](/lexicons/chat/bsky/convo/chat-bsky-convo-defs#logacceptconvo)<br/>&nbsp;&nbsp;[`chat.bsky.convo.defs#logLeaveConvo`](/lexicons/chat/bsky/convo/chat-bsky-convo-defs#logleaveconvo)<br/>&nbsp;&nbsp;[`chat.bsky.convo.defs#logMuteConvo`](/lexicons/chat/bsky/convo/chat-bsky-convo-defs#logmuteconvo)<br/>&nbsp;&nbsp;[`chat.bsky.convo.defs#logUnmuteConvo`](/lexicons/chat/bsky/convo/chat-bsky-convo-defs#logunmuteconvo)<br/>&nbsp;&nbsp;[`chat.bsky.convo.defs#logCreateMessage`](/lexicons/chat/bsky/convo/chat-bsky-convo-defs#logcreatemessage)<br/>&nbsp;&nbsp;[`chat.bsky.convo.defs#logDeleteMessage`](/lexicons/chat/bsky/convo/chat-bsky-convo-defs#logdeletemessage)<br/>&nbsp;&nbsp;[`chat.bsky.convo.defs#logReadMessage`](/lexicons/chat/bsky/convo/chat-bsky-convo-defs#logreadmessage)<br/>&nbsp;&nbsp;[`chat.bsky.convo.defs#logAddReaction`](/lexicons/chat/bsky/convo/chat-bsky-convo-defs#logaddreaction)<br/>&nbsp;&nbsp;[`chat.bsky.convo.defs#logRemoveReaction`](/lexicons/chat/bsky/convo/chat-bsky-convo-defs#logremovereaction) | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "chat.bsky.convo.getLog",
  "defs": {
    "main": {
      "type": "query",
      "parameters": {
        "type": "params",
        "required": [],
        "properties": {
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
            "logs"
          ],
          "properties": {
            "cursor": {
              "type": "string"
            },
            "logs": {
              "type": "array",
              "items": {
                "type": "union",
                "refs": [
                  "chat.bsky.convo.defs#logBeginConvo",
                  "chat.bsky.convo.defs#logAcceptConvo",
                  "chat.bsky.convo.defs#logLeaveConvo",
                  "chat.bsky.convo.defs#logMuteConvo",
                  "chat.bsky.convo.defs#logUnmuteConvo",
                  "chat.bsky.convo.defs#logCreateMessage",
                  "chat.bsky.convo.defs#logDeleteMessage",
                  "chat.bsky.convo.defs#logReadMessage",
                  "chat.bsky.convo.defs#logAddReaction",
                  "chat.bsky.convo.defs#logRemoveReaction"
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
