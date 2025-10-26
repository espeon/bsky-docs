---
title: com.atproto.server.refreshSession
description: Reference for the com.atproto.server.refreshSession lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Refresh an authentication session. Requires auth using the 'refreshJwt' (not the 'accessJwt').

**Parameters:** _(None defined)_

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
| `active` | `boolean` | ❌  |  |  |
| `status` | `string` | ❌  | Hosting status of the account. If not specified, then assume 'active'. | Known Values: `takendown`, `suspended`, `deactivated` |
**Possible Errors:**

- `AccountTakedown`

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.server.refreshSession",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Refresh an authentication session. Requires auth using the 'refreshJwt' (not the 'accessJwt').",
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
            "active": {
              "type": "boolean"
            },
            "status": {
              "type": "string",
              "description": "Hosting status of the account. If not specified, then assume 'active'.",
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
        }
      ]
    }
  }
}
```
