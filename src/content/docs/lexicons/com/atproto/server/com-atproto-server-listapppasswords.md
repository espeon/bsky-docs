---
title: com.atproto.server.listAppPasswords
description: Reference for the com.atproto.server.listAppPasswords lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

List all App Passwords.

**Parameters:** _(None defined)_

**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `passwords` | Array of [`#appPassword`](#apppassword) | ✅  |  |  |
**Possible Errors:**

- `AccountTakedown`

---

<a name="apppassword"></a>
### `appPassword`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `name` | `string` | ✅  |  |  |
| `createdAt` | `string` | ✅  |  | Format: `datetime` |
| `privileged` | `boolean` | ❌  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.server.listAppPasswords",
  "defs": {
    "main": {
      "type": "query",
      "description": "List all App Passwords.",
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "passwords"
          ],
          "properties": {
            "passwords": {
              "type": "array",
              "items": {
                "type": "ref",
                "ref": "#appPassword"
              }
            }
          }
        }
      },
      "errors": [
        {
          "name": "AccountTakedown"
        }
      ]
    },
    "appPassword": {
      "type": "object",
      "required": [
        "name",
        "createdAt"
      ],
      "properties": {
        "name": {
          "type": "string"
        },
        "createdAt": {
          "type": "string",
          "format": "datetime"
        },
        "privileged": {
          "type": "boolean"
        }
      }
    }
  }
}
```
