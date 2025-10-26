---
title: com.atproto.server.getSession
description: Reference for the com.atproto.server.getSession lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Get information about the current auth session. Requires auth.

**Parameters:** _(None defined)_

**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `handle` | `string` | ✅  |  | Format: `handle` |
| `did` | `string` | ✅  |  | Format: `did` |
| `email` | `string` | ❌  |  |  |
| `emailConfirmed` | `boolean` | ❌  |  |  |
| `emailAuthFactor` | `boolean` | ❌  |  |  |
| `didDoc` | `unknown` | ❌  |  |  |
| `active` | `boolean` | ❌  |  |  |
| `status` | `string` | ❌  | If active=false, this optional field indicates a possible reason for why the account is not active. If active=false and no status is supplied, then the host makes no claim for why the repository is no longer being hosted. | Known Values: `takendown`, `suspended`, `deactivated` |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.server.getSession",
  "defs": {
    "main": {
      "type": "query",
      "description": "Get information about the current auth session. Requires auth.",
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "handle",
            "did"
          ],
          "properties": {
            "handle": {
              "type": "string",
              "format": "handle"
            },
            "did": {
              "type": "string",
              "format": "did"
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
            "didDoc": {
              "type": "unknown"
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
      }
    }
  }
}
```
