---
title: com.atproto.server.resetPassword
description: Reference for the com.atproto.server.resetPassword lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Reset a user account password using a token.

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `token` | `string` | ✅  |  |  |
| `password` | `string` | ✅  |  |  |
**Possible Errors:**

- `ExpiredToken`
- `InvalidToken`

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.server.resetPassword",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Reset a user account password using a token.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "token",
            "password"
          ],
          "properties": {
            "token": {
              "type": "string"
            },
            "password": {
              "type": "string"
            }
          }
        }
      },
      "errors": [
        {
          "name": "ExpiredToken"
        },
        {
          "name": "InvalidToken"
        }
      ]
    }
  }
}
```
