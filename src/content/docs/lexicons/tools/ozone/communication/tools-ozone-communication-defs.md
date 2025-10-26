---
title: tools.ozone.communication.defs
description: Reference for the tools.ozone.communication.defs lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="templateview"></a>
### `templateView`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `id` | `string` | ✅  |  |  |
| `name` | `string` | ✅  | Name of the template. |  |
| `subject` | `string` | ❌  | Content of the template, can contain markdown and variable placeholders. |  |
| `contentMarkdown` | `string` | ✅  | Subject of the message, used in emails. |  |
| `disabled` | `boolean` | ✅  |  |  |
| `lang` | `string` | ❌  | Message language. | Format: `language` |
| `lastUpdatedBy` | `string` | ✅  | DID of the user who last updated the template. | Format: `did` |
| `createdAt` | `string` | ✅  |  | Format: `datetime` |
| `updatedAt` | `string` | ✅  |  | Format: `datetime` |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "tools.ozone.communication.defs",
  "defs": {
    "templateView": {
      "type": "object",
      "required": [
        "id",
        "name",
        "contentMarkdown",
        "disabled",
        "lastUpdatedBy",
        "createdAt",
        "updatedAt"
      ],
      "properties": {
        "id": {
          "type": "string"
        },
        "name": {
          "type": "string",
          "description": "Name of the template."
        },
        "subject": {
          "type": "string",
          "description": "Content of the template, can contain markdown and variable placeholders."
        },
        "contentMarkdown": {
          "type": "string",
          "description": "Subject of the message, used in emails."
        },
        "disabled": {
          "type": "boolean"
        },
        "lang": {
          "type": "string",
          "format": "language",
          "description": "Message language."
        },
        "lastUpdatedBy": {
          "type": "string",
          "format": "did",
          "description": "DID of the user who last updated the template."
        },
        "createdAt": {
          "type": "string",
          "format": "datetime"
        },
        "updatedAt": {
          "type": "string",
          "format": "datetime"
        }
      }
    }
  }
}
```
