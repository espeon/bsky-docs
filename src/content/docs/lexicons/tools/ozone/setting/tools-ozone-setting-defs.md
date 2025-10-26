---
title: tools.ozone.setting.defs
description: Reference for the tools.ozone.setting.defs lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="option"></a>
### `option`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `key` | `string` | ✅  |  | Format: `nsid` |
| `did` | `string` | ✅  |  | Format: `did` |
| `value` | `unknown` | ✅  |  |  |
| `description` | `string` | ❌  |  | Max Length: 10240<br/>Max Graphemes: 1024 |
| `createdAt` | `string` | ❌  |  | Format: `datetime` |
| `updatedAt` | `string` | ❌  |  | Format: `datetime` |
| `managerRole` | `string` | ❌  |  | Known Values: `tools.ozone.team.defs#roleModerator`, `tools.ozone.team.defs#roleTriage`, `tools.ozone.team.defs#roleAdmin`, `tools.ozone.team.defs#roleVerifier` |
| `scope` | `string` | ✅  |  | Known Values: `instance`, `personal` |
| `createdBy` | `string` | ✅  |  | Format: `did` |
| `lastUpdatedBy` | `string` | ✅  |  | Format: `did` |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "tools.ozone.setting.defs",
  "defs": {
    "option": {
      "type": "object",
      "required": [
        "key",
        "value",
        "did",
        "scope",
        "createdBy",
        "lastUpdatedBy"
      ],
      "properties": {
        "key": {
          "type": "string",
          "format": "nsid"
        },
        "did": {
          "type": "string",
          "format": "did"
        },
        "value": {
          "type": "unknown"
        },
        "description": {
          "type": "string",
          "maxGraphemes": 1024,
          "maxLength": 10240
        },
        "createdAt": {
          "type": "string",
          "format": "datetime"
        },
        "updatedAt": {
          "type": "string",
          "format": "datetime"
        },
        "managerRole": {
          "type": "string",
          "knownValues": [
            "tools.ozone.team.defs#roleModerator",
            "tools.ozone.team.defs#roleTriage",
            "tools.ozone.team.defs#roleAdmin",
            "tools.ozone.team.defs#roleVerifier"
          ]
        },
        "scope": {
          "type": "string",
          "knownValues": [
            "instance",
            "personal"
          ]
        },
        "createdBy": {
          "type": "string",
          "format": "did"
        },
        "lastUpdatedBy": {
          "type": "string",
          "format": "did"
        }
      }
    }
  }
}
```
