---
title: com.atproto.server.createAppPassword
description: Reference for the com.atproto.server.createAppPassword lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Create an App Password.

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `name` | `string` | ✅  | A short name for the App Password, to help distinguish them. |  |
| `privileged` | `boolean` | ❌  | If an app password has 'privileged' access to possibly sensitive account state. Meant for use with trusted clients. |  |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** [`#appPassword`](#apppassword)


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
| `password` | `string` | ✅  |  |  |
| `createdAt` | `string` | ✅  |  | Format: `datetime` |
| `privileged` | `boolean` | ❌  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.server.createAppPassword",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Create an App Password.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "name"
          ],
          "properties": {
            "name": {
              "type": "string",
              "description": "A short name for the App Password, to help distinguish them."
            },
            "privileged": {
              "type": "boolean",
              "description": "If an app password has 'privileged' access to possibly sensitive account state. Meant for use with trusted clients."
            }
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "ref",
          "ref": "#appPassword"
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
        "password",
        "createdAt"
      ],
      "properties": {
        "name": {
          "type": "string"
        },
        "password": {
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
