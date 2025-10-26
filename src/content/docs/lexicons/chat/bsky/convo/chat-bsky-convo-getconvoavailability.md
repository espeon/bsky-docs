---
title: chat.bsky.convo.getConvoAvailability
description: Reference for the chat.bsky.convo.getConvoAvailability lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Get whether the requester and the other members can chat. If an existing convo is found for these members, it is returned.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `members` | Array of `string` | ✅  |  | Min Items: 1<br/>Max Items: 10 |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `canChat` | `boolean` | ✅  |  |  |
| `convo` | [`chat.bsky.convo.defs#convoView`](/chat/bsky/convo/defs#convoView) | ❌  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "chat.bsky.convo.getConvoAvailability",
  "defs": {
    "main": {
      "type": "query",
      "description": "Get whether the requester and the other members can chat. If an existing convo is found for these members, it is returned.",
      "parameters": {
        "type": "params",
        "required": [
          "members"
        ],
        "properties": {
          "members": {
            "type": "array",
            "minLength": 1,
            "maxLength": 10,
            "items": {
              "type": "string",
              "format": "did"
            }
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "canChat"
          ],
          "properties": {
            "canChat": {
              "type": "boolean"
            },
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
