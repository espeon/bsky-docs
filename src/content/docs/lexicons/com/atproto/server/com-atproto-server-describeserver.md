---
title: com.atproto.server.describeServer
description: Reference for the com.atproto.server.describeServer lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Describes the server's account creation requirements and capabilities. Implemented by PDS.

**Parameters:** _(None defined)_

**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `inviteCodeRequired` | `boolean` | ❌  | If true, an invite code must be supplied to create an account on this instance. |  |
| `phoneVerificationRequired` | `boolean` | ❌  | If true, a phone verification token must be supplied to create an account on this instance. |  |
| `availableUserDomains` | Array of `string` | ✅  | List of domain suffixes that can be used in account handles. |  |
| `links` | [`#links`](#links) | ❌  | URLs of service policy documents. |  |
| `contact` | [`#contact`](#contact) | ❌  | Contact information |  |
| `did` | `string` | ✅  |  | Format: `did` |

---

<a name="links"></a>
### `links`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `privacyPolicy` | `string` | ❌  |  | Format: `uri` |
| `termsOfService` | `string` | ❌  |  | Format: `uri` |

---

<a name="contact"></a>
### `contact`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `email` | `string` | ❌  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.server.describeServer",
  "defs": {
    "main": {
      "type": "query",
      "description": "Describes the server's account creation requirements and capabilities. Implemented by PDS.",
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "did",
            "availableUserDomains"
          ],
          "properties": {
            "inviteCodeRequired": {
              "type": "boolean",
              "description": "If true, an invite code must be supplied to create an account on this instance."
            },
            "phoneVerificationRequired": {
              "type": "boolean",
              "description": "If true, a phone verification token must be supplied to create an account on this instance."
            },
            "availableUserDomains": {
              "type": "array",
              "description": "List of domain suffixes that can be used in account handles.",
              "items": {
                "type": "string"
              }
            },
            "links": {
              "type": "ref",
              "description": "URLs of service policy documents.",
              "ref": "#links"
            },
            "contact": {
              "type": "ref",
              "description": "Contact information",
              "ref": "#contact"
            },
            "did": {
              "type": "string",
              "format": "did"
            }
          }
        }
      }
    },
    "links": {
      "type": "object",
      "properties": {
        "privacyPolicy": {
          "type": "string",
          "format": "uri"
        },
        "termsOfService": {
          "type": "string",
          "format": "uri"
        }
      }
    },
    "contact": {
      "type": "object",
      "properties": {
        "email": {
          "type": "string"
        }
      }
    }
  }
}
```
