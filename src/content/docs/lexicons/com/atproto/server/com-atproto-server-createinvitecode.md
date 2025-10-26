---
title: com.atproto.server.createInviteCode
description: Reference for the com.atproto.server.createInviteCode lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Create an invite code.

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `useCount` | `integer` | ✅  |  |  |
| `forAccount` | `string` | ❌  |  | Format: `did` |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `code` | `string` | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.server.createInviteCode",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Create an invite code.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "useCount"
          ],
          "properties": {
            "useCount": {
              "type": "integer"
            },
            "forAccount": {
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
            "code"
          ],
          "properties": {
            "code": {
              "type": "string"
            }
          }
        }
      }
    }
  }
}
```
