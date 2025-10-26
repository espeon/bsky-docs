---
title: tools.ozone.communication.listTemplates
description: Reference for the tools.ozone.communication.listTemplates lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Get list of all communication templates.

**Parameters:** _(None defined)_

**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `communicationTemplates` | Array of [`tools.ozone.communication.defs#templateView`](/lexicons/tools/ozone/communication/defs#templateView) | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "tools.ozone.communication.listTemplates",
  "defs": {
    "main": {
      "type": "query",
      "description": "Get list of all communication templates.",
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "communicationTemplates"
          ],
          "properties": {
            "communicationTemplates": {
              "type": "array",
              "items": {
                "type": "ref",
                "ref": "tools.ozone.communication.defs#templateView"
              }
            }
          }
        }
      }
    }
  }
}
```
