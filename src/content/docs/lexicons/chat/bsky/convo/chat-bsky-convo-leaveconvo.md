---
title: chat.bsky.convo.leaveConvo
description: Reference for the chat.bsky.convo.leaveConvo lexicon
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
| `convoId` | `string` | ✅  |  |  |
| `rev` | `string` | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "chat.bsky.convo.leaveConvo",
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
            "convoId",
            "rev"
          ],
          "properties": {
            "convoId": {
              "type": "string"
            },
            "rev": {
              "type": "string"
            }
          }
        }
      }
    }
  }
}
```
