---
title: tools.ozone.safelink.removeRule
description: Reference for the tools.ozone.safelink.removeRule lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Remove an existing URL safety rule

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `url` | `string` | ✅  | The URL or domain to remove the rule for |  |
| `pattern` | [`tools.ozone.safelink.defs#patternType`](/tools/ozone/safelink/defs#patternType) | ✅  |  |  |
| `comment` | `string` | ❌  | Optional comment about why the rule is being removed |  |
| `createdBy` | `string` | ❌  | Optional DID of the user. Only respected when using admin auth. | Format: `did` |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** [`tools.ozone.safelink.defs#event`](/tools/ozone/safelink/defs#event)


**Possible Errors:**

- `RuleNotFound`: No active rule found for this URL/domain

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "tools.ozone.safelink.removeRule",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Remove an existing URL safety rule",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "url",
            "pattern"
          ],
          "properties": {
            "url": {
              "type": "string",
              "description": "The URL or domain to remove the rule for"
            },
            "pattern": {
              "type": "ref",
              "ref": "tools.ozone.safelink.defs#patternType"
            },
            "comment": {
              "type": "string",
              "description": "Optional comment about why the rule is being removed"
            },
            "createdBy": {
              "type": "string",
              "format": "did",
              "description": "Optional DID of the user. Only respected when using admin auth."
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
