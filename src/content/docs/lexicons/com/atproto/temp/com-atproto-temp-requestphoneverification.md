---
title: com.atproto.temp.requestPhoneVerification
description: Reference for the com.atproto.temp.requestPhoneVerification lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Request a verification code to be sent to the supplied phone number

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `phoneNumber` | `string` | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.temp.requestPhoneVerification",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Request a verification code to be sent to the supplied phone number",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "phoneNumber"
          ],
          "properties": {
            "phoneNumber": {
              "type": "string"
            }
          }
        }
      }
    }
  }
}
```
