---
title: tools.ozone.safelink.updateRule
description: Reference for the tools.ozone.safelink.updateRule lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Update an existing URL safety rule

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `url` | `string` | ✅  | The URL or domain to update the rule for |  |
| `pattern` | [`tools.ozone.safelink.defs#patternType`](/lexicons/tools/ozone/safelink/defs#patternType) | ✅  |  |  |
| `action` | [`tools.ozone.safelink.defs#actionType`](/lexicons/tools/ozone/safelink/defs#actionType) | ✅  |  |  |
| `reason` | [`tools.ozone.safelink.defs#reasonType`](/lexicons/tools/ozone/safelink/defs#reasonType) | ✅  |  |  |
| `comment` | `string` | ❌  | Optional comment about the update |  |
| `createdBy` | `string` | ❌  | Optional DID to credit as the creator. Only respected for admin_token authentication. | Format: `did` |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** [`tools.ozone.safelink.defs#event`](/lexicons/tools/ozone/safelink/defs#event)


**Possible Errors:**

- `RuleNotFound`: No active rule found for this URL/domain

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "tools.ozone.safelink.updateRule",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Update an existing URL safety rule",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "url",
            "pattern",
            "action",
            "reason"
          ],
          "properties": {
            "url": {
              "type": "string",
              "description": "The URL or domain to update the rule for"
            },
            "pattern": {
              "type": "ref",
              "ref": "tools.ozone.safelink.defs#patternType"
            },
            "action": {
              "type": "ref",
              "ref": "tools.ozone.safelink.defs#actionType"
            },
            "reason": {
              "type": "ref",
              "ref": "tools.ozone.safelink.defs#reasonType"
            },
            "comment": {
              "type": "string",
              "description": "Optional comment about the update"
            },
            "createdBy": {
              "type": "string",
              "format": "did",
              "description": "Optional DID to credit as the creator. Only respected for admin_token authentication."
            }
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "ref",
          "ref": "tools.ozone.safelink.defs#event"
        }
      },
      "errors": [
        {
          "name": "RuleNotFound",
          "description": "No active rule found for this URL/domain"
        }
      ]
    }
  }
}
```
