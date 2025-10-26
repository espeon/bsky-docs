---
title: com.atproto.server.deleteAccount
description: Reference for the com.atproto.server.deleteAccount lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Delete an actor's account with a token and password. Can only be called after requesting a deletion token. Requires auth.

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `did` | `string` | ✅  |  | Format: `did` |
| `password` | `string` | ✅  |  |  |
| `token` | `string` | ✅  |  |  |
**Possible Errors:**

- `ExpiredToken`
- `InvalidToken`

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.server.deleteAccount",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Delete an actor's account with a token and password. Can only be called after requesting a deletion token. Requires auth.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "did",
            "password",
            "token"
          ],
          "properties": {
            "did": {
              "type": "string",
              "format": "did"
            },
            "password": {
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
