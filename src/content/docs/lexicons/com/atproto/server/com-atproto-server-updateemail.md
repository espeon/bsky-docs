---
title: com.atproto.server.updateEmail
description: Reference for the com.atproto.server.updateEmail lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Update an account's email.

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `email` | `string` | ✅  |  |  |
| `emailAuthFactor` | `boolean` | ❌  |  |  |
| `token` | `string` | ❌  | Requires a token from com.atproto.sever.requestEmailUpdate if the account's email has been confirmed. |  |
**Possible Errors:**

- `ExpiredToken`
- `InvalidToken`
- `TokenRequired`

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.server.updateEmail",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Update an account's email.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "email"
          ],
          "properties": {
            "email": {
              "type": "string"
            },
            "emailAuthFactor": {
              "type": "boolean"
            },
            "token": {
              "type": "string",
              "description": "Requires a token from com.atproto.sever.requestEmailUpdate if the account's email has been confirmed."
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
        },
        {
          "name": "TokenRequired"
        }
      ]
    }
  }
}
```
