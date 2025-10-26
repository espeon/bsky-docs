---
title: chat.bsky.convo.muteConvo
description: Reference for the chat.bsky.convo.muteConvo lexicon
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
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `convo` | [`chat.bsky.convo.defs#convoView`](lexicons/chat/bsky/convo/defs#convoView) | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "chat.bsky.convo.muteConvo",
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
