---
title: tools.ozone.safelink.addRule
description: Reference for the tools.ozone.safelink.addRule lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Add a new URL safety rule

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `url` | `string` | ✅  | The URL or domain to apply the rule to |  |
| `pattern` | [`tools.ozone.safelink.defs#patternType`](/lexicons/tools/ozone/safelink/defs#patternType) | ✅  |  |  |
| `action` | [`tools.ozone.safelink.defs#actionType`](/lexicons/tools/ozone/safelink/defs#actionType) | ✅  |  |  |
| `reason` | [`tools.ozone.safelink.defs#reasonType`](/lexicons/tools/ozone/safelink/defs#reasonType) | ✅  |  |  |
| `comment` | `string` | ❌  | Optional comment about the decision |  |
| `createdBy` | `string` | ❌  | Author DID. Only respected when using admin auth | Format: `did` |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** [`tools.ozone.safelink.defs#event`](/lexicons/tools/ozone/safelink/defs#event)


**Possible Errors:**

- `InvalidUrl`: The provided URL is invalid
- `RuleAlreadyExists`: A rule for this URL/domain already exists

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "tools.ozone.safelink.addRule",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Add a new URL safety rule",
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
              "description": "The URL or domain to apply the rule to"
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
              "description": "Optional comment about the decision"
            },
            "createdBy": {
              "type": "string",
              "format": "did",
              "description": "Author DID. Only respected when using admin auth"
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
          "name": "InvalidUrl",
          "description": "The provided URL is invalid"
        },
        {
          "name": "RuleAlreadyExists",
          "description": "A rule for this URL/domain already exists"
        }
      ]
    }
  }
}
```
