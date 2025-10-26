---
title: com.atproto.server.confirmEmail
description: Reference for the com.atproto.server.confirmEmail lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Confirm an email using a token from com.atproto.server.requestEmailConfirmation.

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `email` | `string` | ✅  |  |  |
| `token` | `string` | ✅  |  |  |
**Possible Errors:**

- `AccountNotFound`
- `ExpiredToken`
- `InvalidToken`
- `InvalidEmail`

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.server.confirmEmail",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Confirm an email using a token from com.atproto.server.requestEmailConfirmation.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "email",
            "token"
          ],
          "properties": {
            "email": {
              "type": "string"
            },
            "token": {
              "type": "string"
            }
          }
        }
      },
      "errors": [
        {
          "name": "AccountNotFound"
        },
        {
          "name": "ExpiredToken"
        },
        {
          "name": "InvalidToken"
        },
        {
          "name": "InvalidEmail"
        }
      ]
    }
  }
}
```
