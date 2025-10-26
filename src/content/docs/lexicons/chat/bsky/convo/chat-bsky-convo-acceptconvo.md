---
title: chat.bsky.convo.acceptConvo
description: Reference for the chat.bsky.convo.acceptConvo lexicon
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
| `rev` | `string` | ❌  | Rev when the convo was accepted. If not present, the convo was already accepted. |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "chat.bsky.convo.acceptConvo",
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
          "properties": {
            "rev": {
              "description": "Rev when the convo was accepted. If not present, the convo was already accepted.",
              "type": "string"
            }
          }
        }
      }
    }
  }
}
```
