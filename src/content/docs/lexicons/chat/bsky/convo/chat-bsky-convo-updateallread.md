---
title: chat.bsky.convo.updateAllRead
description: Reference for the chat.bsky.convo.updateAllRead lexicon
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
| `status` | `string` | ❌  |  | Known Values: `request`, `accepted` |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `updatedCount` | `integer` | ✅  | The count of updated convos. |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "chat.bsky.convo.updateAllRead",
  "defs": {
    "main": {
      "type": "procedure",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "properties": {
            "status": {
              "type": "string",
              "knownValues": [
                "request",
                "accepted"
              ]
            }
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "updatedCount"
          ],
          "properties": {
            "updatedCount": {
              "description": "The count of updated convos.",
              "type": "integer"
            }
          }
        }
      }
    }
  }
}
```
