---
title: tools.ozone.communication.createTemplate
description: Reference for the tools.ozone.communication.createTemplate lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Administrative action to create a new, re-usable communication (email for now) template.

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `name` | `string` | ✅  | Name of the template. |  |
| `contentMarkdown` | `string` | ✅  | Content of the template, markdown supported, can contain variable placeholders. |  |
| `subject` | `string` | ✅  | Subject of the message, used in emails. |  |
| `lang` | `string` | ❌  | Message language. | Format: `language` |
| `createdBy` | `string` | ❌  | DID of the user who is creating the template. | Format: `did` |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** [`tools.ozone.communication.defs#templateView`](/lexicons/tools/ozone/communication/tools-ozone-communication-defs#templateview)


**Possible Errors:**

- `DuplicateTemplateName`

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "tools.ozone.communication.createTemplate",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Administrative action to create a new, re-usable communication (email for now) template.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "subject",
            "contentMarkdown",
            "name"
          ],
          "properties": {
            "name": {
              "type": "string",
              "description": "Name of the template."
            },
            "contentMarkdown": {
              "type": "string",
              "description": "Content of the template, markdown supported, can contain variable placeholders."
            },
            "subject": {
              "type": "string",
              "description": "Subject of the message, used in emails."
            },
            "lang": {
              "type": "string",
              "format": "language",
              "description": "Message language."
            },
            "createdBy": {
              "type": "string",
              "format": "did",
              "description": "DID of the user who is creating the template."
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
