---
title: com.atproto.admin.sendEmail
description: Reference for the com.atproto.admin.sendEmail lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Send email to a user's account email address.

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `recipientDid` | `string` | ✅  |  | Format: `did` |
| `content` | `string` | ✅  |  |  |
| `subject` | `string` | ❌  |  |  |
| `senderDid` | `string` | ✅  |  | Format: `did` |
| `comment` | `string` | ❌  | Additional comment by the sender that won't be used in the email itself but helpful to provide more context for moderators/reviewers |  |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `sent` | `boolean` | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.admin.sendEmail",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Send email to a user's account email address.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "recipientDid",
            "content",
            "senderDid"
          ],
          "properties": {
            "recipientDid": {
              "type": "string",
              "format": "did"
            },
            "content": {
              "type": "string"
            },
            "subject": {
              "type": "string"
            },
            "senderDid": {
              "type": "string",
              "format": "did"
            },
            "comment": {
              "type": "string",
              "description": "Additional comment by the sender that won't be used in the email itself but helpful to provide more context for moderators/reviewers"
            }
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "sent"
          ],
          "properties": {
            "sent": {
              "type": "boolean"
            }
          }
        }
      }
    }
  }
}
```
