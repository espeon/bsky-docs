---
title: com.atproto.server.createAccount
description: Reference for the com.atproto.server.createAccount lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Create an account. Implemented by PDS.

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `email` | `string` | ❌  |  |  |
| `handle` | `string` | ✅  | Requested handle for the account. | Format: `handle` |
| `did` | `string` | ❌  | Pre-existing atproto DID, being imported to a new account. | Format: `did` |
| `inviteCode` | `string` | ❌  |  |  |
| `verificationCode` | `string` | ❌  |  |  |
| `verificationPhone` | `string` | ❌  |  |  |
| `password` | `string` | ❌  | Initial account password. May need to meet instance-specific password strength requirements. |  |
| `recoveryKey` | `string` | ❌  | DID PLC rotation key (aka, recovery key) to be included in PLC creation operation. |  |
| `plcOp` | `unknown` | ❌  | A signed DID PLC operation to be submitted as part of importing an existing account to this instance. NOTE: this optional field may be updated when full account migration is implemented. |  |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

Account login session returned on successful account creation.

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `accessJwt` | `string` | ✅  |  |  |
| `refreshJwt` | `string` | ✅  |  |  |
| `handle` | `string` | ✅  |  | Format: `handle` |
| `did` | `string` | ✅  | The DID of the new account. | Format: `did` |
| `didDoc` | `unknown` | ❌  | Complete DID document. |  |
**Possible Errors:**

- `InvalidHandle`
- `InvalidPassword`
- `InvalidInviteCode`
- `HandleNotAvailable`
- `UnsupportedDomain`
- `UnresolvableDid`
- `IncompatibleDidDoc`

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.server.createAccount",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Create an account. Implemented by PDS.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "handle"
          ],
          "properties": {
            "email": {
              "type": "string"
            },
            "handle": {
              "type": "string",
              "format": "handle",
              "description": "Requested handle for the account."
            },
            "did": {
              "type": "string",
              "format": "did",
              "description": "Pre-existing atproto DID, being imported to a new account."
            },
            "inviteCode": {
              "type": "string"
            },
            "verificationCode": {
              "type": "string"
            },
            "verificationPhone": {
              "type": "string"
            },
            "password": {
              "type": "string",
              "description": "Initial account password. May need to meet instance-specific password strength requirements."
            },
            "recoveryKey": {
              "type": "string",
              "description": "DID PLC rotation key (aka, recovery key) to be included in PLC creation operation."
            },
            "plcOp": {
              "type": "unknown",
              "description": "A signed DID PLC operation to be submitted as part of importing an existing account to this instance. NOTE: this optional field may be updated when full account migration is implemented."
            }
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "description": "Account login session returned on successful account creation.",
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
              "format": "did",
              "description": "The DID of the new account."
            },
            "didDoc": {
              "type": "unknown",
              "description": "Complete DID document."
            }
          }
        }
      },
      "errors": [
        {
          "name": "InvalidHandle"
        },
        {
          "name": "InvalidPassword"
        },
        {
          "name": "InvalidInviteCode"
        },
        {
          "name": "HandleNotAvailable"
        },
        {
          "name": "UnsupportedDomain"
        },
        {
          "name": "UnresolvableDid"
        },
        {
          "name": "IncompatibleDidDoc"
        }
      ]
    }
  }
}
```
