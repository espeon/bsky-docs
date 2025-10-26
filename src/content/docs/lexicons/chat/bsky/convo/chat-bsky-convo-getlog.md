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
| `logs` | Array of Union of:<br/>&nbsp;&nbsp;[`chat.bsky.convo.defs#logBeginConvo`](/chat/bsky/convo/defs#logBeginConvo)<br/>&nbsp;&nbsp;[`chat.bsky.convo.defs#logAcceptConvo`](/chat/bsky/convo/defs#logAcceptConvo)<br/>&nbsp;&nbsp;[`chat.bsky.convo.defs#logLeaveConvo`](/chat/bsky/convo/defs#logLeaveConvo)<br/>&nbsp;&nbsp;[`chat.bsky.convo.defs#logMuteConvo`](/chat/bsky/convo/defs#logMuteConvo)<br/>&nbsp;&nbsp;[`chat.bsky.convo.defs#logUnmuteConvo`](/chat/bsky/convo/defs#logUnmuteConvo)<br/>&nbsp;&nbsp;[`chat.bsky.convo.defs#logCreateMessage`](/chat/bsky/convo/defs#logCreateMessage)<br/>&nbsp;&nbsp;[`chat.bsky.convo.defs#logDeleteMessage`](/chat/bsky/convo/defs#logDeleteMessage)<br/>&nbsp;&nbsp;[`chat.bsky.convo.defs#logReadMessage`](/chat/bsky/convo/defs#logReadMessage)<br/>&nbsp;&nbsp;[`chat.bsky.convo.defs#logAddReaction`](/chat/bsky/convo/defs#logAddReaction)<br/>&nbsp;&nbsp;[`chat.bsky.convo.defs#logRemoveReaction`](/chat/bsky/convo/defs#logRemoveReaction) | ✅  |  |  |

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
