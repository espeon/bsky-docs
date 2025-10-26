---
title: com.atproto.server.createSession
description: Reference for the com.atproto.server.createSession lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Create an authentication session.

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `identifier` | `string` | ✅  | Handle or other identifier supported by the server for the authenticating user. |  |
| `password` | `string` | ✅  |  |  |
| `authFactorToken` | `string` | ❌  |  |  |
| `allowTakendown` | `boolean` | ❌  | When true, instead of throwing error for takendown accounts, a valid response with a narrow scoped token will be returned |  |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `accessJwt` | `string` | ✅  |  |  |
| `refreshJwt` | `string` | ✅  |  |  |
| `handle` | `string` | ✅  |  | Format: `handle` |
| `did` | `string` | ✅  |  | Format: `did` |
| `didDoc` | `unknown` | ❌  |  |  |
| `email` | `string` | ❌  |  |  |
| `emailConfirmed` | `boolean` | ❌  |  |  |
| `emailAuthFactor` | `boolean` | ❌  |  |  |
| `active` | `boolean` | ❌  |  |  |
| `status` | `string` | ❌  | If active=false, this optional field indicates a possible reason for why the account is not active. If active=false and no status is supplied, then the host makes no claim for why the repository is no longer being hosted. | Known Values: `takendown`, `suspended`, `deactivated` |
**Possible Errors:**

- `AccountTakedown`
- `AuthFactorTokenRequired`

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.server.createSession",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Create an authentication session.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "identifier",
            "password"
          ],
          "properties": {
            "identifier": {
              "type": "string",
              "description": "Handle or other identifier supported by the server for the authenticating user."
            },
            "password": {
              "type": "string"
            },
            "authFactorToken": {
              "type": "string"
            },
            "allowTakendown": {
              "type": "boolean",
              "description": "When true, instead of throwing error for takendown accounts, a valid response with a narrow scoped token will be returned"
            }
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "accessJwt",
            "refreshJwt",
            "handle",
            "did"
          ],
          "properties": {
            "accessJwt": {
              "type": "string"
            },
            "refreshJwt": {
              "type": "string"
            },
            "handle": {
              "type": "string",
              "format": "handle"
            },
            "did": {
              "type": "string",
              "format": "did"
            },
            "didDoc": {
              "type": "unknown"
            },
            "email": {
              "type": "string"
            },
            "emailConfirmed": {
              "type": "boolean"
            },
            "emailAuthFactor": {
              "type": "boolean"
            },
            "active": {
              "type": "boolean"
            },
            "status": {
              "type": "string",
              "description": "If active=false, this optional field indicates a possible reason for why the account is not active. If active=false and no status is supplied, then the host makes no claim for why the repository is no longer being hosted.",
              "knownValues": [
                "takendown",
                "suspended",
                "deactivated"
              ]
            }
          }
        }
      },
      "errors": [
        {
          "name": "AccountTakedown"
        },
        {
          "name": "AuthFactorTokenRequired"
        }
      ]
    }
  }
}
```
