---
title: tools.ozone.moderation.getSubjects
description: Reference for the tools.ozone.moderation.getSubjects lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Get details about subjects.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `subjects` | Array of `string` | ✅  |  | Min Items: 1<br/>Max Items: 100 |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `subjects` | Array of [`tools.ozone.moderation.defs#subjectView`](/lexicons/tools/ozone/moderation/tools-ozone-moderation-defs#subjectview) | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "tools.ozone.moderation.getSubjects",
  "defs": {
    "main": {
      "type": "query",
      "description": "Get details about subjects.",
      "parameters": {
        "type": "params",
        "required": [
          "subjects"
        ],
        "properties": {
          "subjects": {
            "type": "array",
            "maxLength": 100,
            "minLength": 1,
            "items": {
              "type": "string"
            }
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "subjects"
          ],
          "properties": {
            "subjects": {
              "type": "array",
              "items": {
                "type": "ref",
                "ref": "tools.ozone.moderation.defs#subjectView"
              }
            }
          }
        }
      }
    }
  }
}
```
