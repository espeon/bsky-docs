---
title: tools.ozone.verification.grantVerifications
description: Reference for the tools.ozone.verification.grantVerifications lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Grant verifications to multiple subjects. Allows batch processing of up to 100 verifications at once.

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `verifications` | Array of [`#verificationInput`](#verificationinput) | ✅  | Array of verification requests to process | Max Items: 100 |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `verifications` | Array of [`tools.ozone.verification.defs#verificationView`](lexicons/tools/ozone/verification/defs#verificationView) | ✅  |  |  |
| `failedVerifications` | Array of [`#grantError`](#granterror) | ✅  |  |  |

---

<a name="verificationinput"></a>
### `verificationInput`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `subject` | `string` | ✅  | The did of the subject being verified | Format: `did` |
| `handle` | `string` | ✅  | Handle of the subject the verification applies to at the moment of verifying. | Format: `handle` |
| `displayName` | `string` | ✅  | Display name of the subject the verification applies to at the moment of verifying. |  |
| `createdAt` | `string` | ❌  | Timestamp for verification record. Defaults to current time when not specified. | Format: `datetime` |

---

<a name="granterror"></a>
### `grantError`

**Type:** `object`

Error object for failed verifications.

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `error` | `string` | ✅  | Error message describing the reason for failure. |  |
| `subject` | `string` | ✅  | The did of the subject being verified | Format: `did` |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "tools.ozone.verification.grantVerifications",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Grant verifications to multiple subjects. Allows batch processing of up to 100 verifications at once.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "verifications"
          ],
          "properties": {
            "verifications": {
              "type": "array",
              "description": "Array of verification requests to process",
              "maxLength": 100,
              "items": {
                "type": "ref",
                "ref": "#verificationInput"
              }
            }
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "verifications",
            "failedVerifications"
          ],
          "properties": {
            "verifications": {
              "type": "array",
              "items": {
                "type": "ref",
                "ref": "tools.ozone.verification.defs#verificationView"
              }
            },
            "failedVerifications": {
              "type": "array",
              "items": {
                "type": "ref",
                "ref": "#grantError"
              }
            }
          }
        }
      }
    },
    "verificationInput": {
      "type": "object",
      "required": [
        "subject",
        "handle",
        "displayName"
      ],
      "properties": {
        "subject": {
          "type": "string",
          "description": "The did of the subject being verified",
          "format": "did"
        },
        "handle": {
          "type": "string",
          "description": "Handle of the subject the verification applies to at the moment of verifying.",
          "format": "handle"
        },
        "displayName": {
          "type": "string",
          "description": "Display name of the subject the verification applies to at the moment of verifying."
        },
        "createdAt": {
          "type": "string",
          "format": "datetime",
          "description": "Timestamp for verification record. Defaults to current time when not specified."
        }
      }
    },
    "grantError": {
      "type": "object",
      "description": "Error object for failed verifications.",
      "required": [
        "error",
        "subject"
      ],
      "properties": {
        "error": {
          "type": "string",
          "description": "Error message describing the reason for failure."
        },
        "subject": {
          "type": "string",
          "description": "The did of the subject being verified",
          "format": "did"
        }
      }
    }
  }
}
```
