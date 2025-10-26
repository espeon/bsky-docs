---
title: tools.ozone.verification.revokeVerifications
description: Reference for the tools.ozone.verification.revokeVerifications lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Revoke previously granted verifications in batches of up to 100.

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `uris` | Array of `string` | ✅  | Array of verification record uris to revoke | Max Items: 100 |
| `revokeReason` | `string` | ❌  | Reason for revoking the verification. This is optional and can be omitted if not needed. | Max Length: 1000 |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `revokedVerifications` | Array of `string` | ✅  | List of verification uris successfully revoked |  |
| `failedRevocations` | Array of [`#revokeError`](#revokeerror) | ✅  | List of verification uris that couldn't be revoked, including failure reasons |  |

---

<a name="revokeerror"></a>
### `revokeError`

**Type:** `object`

Error object for failed revocations

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `uri` | `string` | ✅  | The AT-URI of the verification record that failed to revoke. | Format: `at-uri` |
| `error` | `string` | ✅  | Description of the error that occurred during revocation. |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "tools.ozone.verification.revokeVerifications",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Revoke previously granted verifications in batches of up to 100.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "uris"
          ],
          "properties": {
            "uris": {
              "type": "array",
              "description": "Array of verification record uris to revoke",
              "maxLength": 100,
              "items": {
                "type": "string",
                "description": "The AT-URI of the verification record to revoke.",
                "format": "at-uri"
              }
            },
            "revokeReason": {
              "type": "string",
              "description": "Reason for revoking the verification. This is optional and can be omitted if not needed.",
              "maxLength": 1000
            }
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "revokedVerifications",
            "failedRevocations"
          ],
          "properties": {
            "revokedVerifications": {
              "type": "array",
              "description": "List of verification uris successfully revoked",
              "items": {
                "type": "string",
                "format": "at-uri"
              }
            },
            "failedRevocations": {
              "type": "array",
              "description": "List of verification uris that couldn't be revoked, including failure reasons",
              "items": {
                "type": "ref",
                "ref": "#revokeError"
              }
            }
          }
        }
      }
    },
    "revokeError": {
      "type": "object",
      "description": "Error object for failed revocations",
      "required": [
        "uri",
        "error"
      ],
      "properties": {
        "uri": {
          "type": "string",
          "description": "The AT-URI of the verification record that failed to revoke.",
          "format": "at-uri"
        },
        "error": {
          "type": "string",
          "description": "Description of the error that occurred during revocation."
        }
      }
    }
  }
}
```
