---
title: tools.ozone.setting.upsertOption
description: Reference for the tools.ozone.setting.upsertOption lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Create or update setting option

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `key` | `string` | ✅  |  | Format: `nsid` |
| `scope` | `string` | ✅  |  | Known Values: `instance`, `personal` |
| `value` | `unknown` | ✅  |  |  |
| `description` | `string` | ❌  |  | Max Length: 2000 |
| `managerRole` | `string` | ❌  |  | Known Values: `tools.ozone.team.defs#roleModerator`, `tools.ozone.team.defs#roleTriage`, `tools.ozone.team.defs#roleVerifier`, `tools.ozone.team.defs#roleAdmin` |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `option` | [`tools.ozone.setting.defs#option`](/tools/ozone/setting/defs#option) | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "tools.ozone.setting.upsertOption",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Create or update setting option",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "key",
            "scope",
            "value"
          ],
          "properties": {
            "key": {
              "type": "string",
              "format": "nsid"
            },
            "scope": {
              "type": "string",
              "knownValues": [
                "instance",
                "personal"
              ]
            },
            "value": {
              "type": "unknown"
            },
            "description": {
              "type": "string",
              "maxLength": 2000
            },
            "managerRole": {
              "type": "string",
              "knownValues": [
                "tools.ozone.team.defs#roleModerator",
                "tools.ozone.team.defs#roleTriage",
                "tools.ozone.team.defs#roleVerifier",
                "tools.ozone.team.defs#roleAdmin"
              ]
            }
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "option"
          ],
          "properties": {
            "option": {
              "type": "ref",
              "ref": "tools.ozone.setting.defs#option"
            }
          }
        }
      }
    }
  }
}
```
