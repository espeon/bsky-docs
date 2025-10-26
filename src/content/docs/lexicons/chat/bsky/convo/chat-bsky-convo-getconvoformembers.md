---
title: chat.bsky.convo.getConvoForMembers
description: Reference for the chat.bsky.convo.getConvoForMembers lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

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
| `convo` | [`chat.bsky.convo.defs#convoView`](/lexicons/chat/bsky/convo/defs#convoView) | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "chat.bsky.convo.getConvoForMembers",
  "defs": {
    "main": {
      "type": "query",
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
