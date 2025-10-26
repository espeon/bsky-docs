---
title: tools.ozone.communication.updateTemplate
description: Reference for the tools.ozone.communication.updateTemplate lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Administrative action to update an existing communication template. Allows passing partial fields to patch specific fields only.

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `id` | `string` | ✅  | ID of the template to be updated. |  |
| `name` | `string` | ❌  | Name of the template. |  |
| `lang` | `string` | ❌  | Message language. | Format: `language` |
| `contentMarkdown` | `string` | ❌  | Content of the template, markdown supported, can contain variable placeholders. |  |
| `subject` | `string` | ❌  | Subject of the message, used in emails. |  |
| `updatedBy` | `string` | ❌  | DID of the user who is updating the template. | Format: `did` |
| `disabled` | `boolean` | ❌  |  |  |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** [`tools.ozone.communication.defs#templateView`](lexicons/tools/ozone/communication/defs#templateView)


**Possible Errors:**

- `DuplicateTemplateName`

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "tools.ozone.communication.updateTemplate",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Administrative action to update an existing communication template. Allows passing partial fields to patch specific fields only.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "id"
          ],
          "properties": {
            "id": {
              "type": "string",
              "description": "ID of the template to be updated."
            },
            "name": {
              "type": "string",
              "description": "Name of the template."
            },
            "lang": {
              "type": "string",
              "format": "language",
              "description": "Message language."
            },
            "contentMarkdown": {
              "type": "string",
              "description": "Content of the template, markdown supported, can contain variable placeholders."
            },
            "subject": {
              "type": "string",
              "description": "Subject of the message, used in emails."
            },
            "updatedBy": {
              "type": "string",
              "format": "did",
              "description": "DID of the user who is updating the template."
            },
            "disabled": {
              "type": "boolean"
            }
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "ref",
          "ref": "tools.ozone.communication.defs#templateView"
        }
      },
      "errors": [
        {
          "name": "DuplicateTemplateName"
        }
      ]
    }
  }
}
```
