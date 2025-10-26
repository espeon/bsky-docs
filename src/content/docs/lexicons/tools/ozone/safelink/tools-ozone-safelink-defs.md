---
title: tools.ozone.safelink.defs
description: Reference for the tools.ozone.safelink.defs lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="event"></a>
### `event`

**Type:** `object`

An event for URL safety decisions

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `id` | `integer` | ✅  | Auto-incrementing row ID |  |
| `eventType` | [`#eventType`](#eventtype) | ✅  |  |  |
| `url` | `string` | ✅  | The URL that this rule applies to |  |
| `pattern` | [`#patternType`](#patterntype) | ✅  |  |  |
| `action` | [`#actionType`](#actiontype) | ✅  |  |  |
| `reason` | [`#reasonType`](#reasontype) | ✅  |  |  |
| `createdBy` | `string` | ✅  | DID of the user who created this rule | Format: `did` |
| `createdAt` | `string` | ✅  |  | Format: `datetime` |
| `comment` | `string` | ❌  | Optional comment about the decision |  |

---

<a name="eventtype"></a>
### `eventType`

**Type:** `string`

**Constraints:**<br/>Known Values: `addRule`, `updateRule`, `removeRule`


---

<a name="patterntype"></a>
### `patternType`

**Type:** `string`

**Constraints:**<br/>Known Values: `domain`, `url`


---

<a name="actiontype"></a>
### `actionType`

**Type:** `string`

**Constraints:**<br/>Known Values: `block`, `warn`, `whitelist`


---

<a name="reasontype"></a>
### `reasonType`

**Type:** `string`

**Constraints:**<br/>Known Values: `csam`, `spam`, `phishing`, `none`


---

<a name="urlrule"></a>
### `urlRule`

**Type:** `object`

Input for creating a URL safety rule

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `url` | `string` | ✅  | The URL or domain to apply the rule to |  |
| `pattern` | [`#patternType`](#patterntype) | ✅  |  |  |
| `action` | [`#actionType`](#actiontype) | ✅  |  |  |
| `reason` | [`#reasonType`](#reasontype) | ✅  |  |  |
| `comment` | `string` | ❌  | Optional comment about the decision |  |
| `createdBy` | `string` | ✅  | DID of the user added the rule. | Format: `did` |
| `createdAt` | `string` | ✅  | Timestamp when the rule was created | Format: `datetime` |
| `updatedAt` | `string` | ✅  | Timestamp when the rule was last updated | Format: `datetime` |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "tools.ozone.safelink.defs",
  "defs": {
    "event": {
      "type": "object",
      "description": "An event for URL safety decisions",
      "required": [
        "id",
        "eventType",
        "url",
        "pattern",
        "action",
        "reason",
        "createdBy",
        "createdAt"
      ],
      "properties": {
        "id": {
          "type": "integer",
          "description": "Auto-incrementing row ID"
        },
        "eventType": {
          "type": "ref",
          "ref": "#eventType"
        },
        "url": {
          "type": "string",
          "description": "The URL that this rule applies to"
        },
        "pattern": {
          "type": "ref",
          "ref": "#patternType"
        },
        "action": {
          "type": "ref",
          "ref": "#actionType"
        },
        "reason": {
          "type": "ref",
          "ref": "#reasonType"
        },
        "createdBy": {
          "type": "string",
          "format": "did",
          "description": "DID of the user who created this rule"
        },
        "createdAt": {
          "type": "string",
          "format": "datetime"
        },
        "comment": {
          "type": "string",
          "description": "Optional comment about the decision"
        }
      }
    },
    "eventType": {
      "type": "string",
      "knownValues": [
        "addRule",
        "updateRule",
        "removeRule"
      ]
    },
    "patternType": {
      "type": "string",
      "knownValues": [
        "domain",
        "url"
      ]
    },
    "actionType": {
      "type": "string",
      "knownValues": [
        "block",
        "warn",
        "whitelist"
      ]
    },
    "reasonType": {
      "type": "string",
      "knownValues": [
        "csam",
        "spam",
        "phishing",
        "none"
      ]
    },
    "urlRule": {
      "type": "object",
      "description": "Input for creating a URL safety rule",
      "required": [
        "url",
        "pattern",
        "action",
        "reason",
        "createdBy",
        "createdAt",
        "updatedAt"
      ],
      "properties": {
        "url": {
          "type": "string",
          "description": "The URL or domain to apply the rule to"
        },
        "pattern": {
          "type": "ref",
          "ref": "#patternType"
        },
        "action": {
          "type": "ref",
          "ref": "#actionType"
        },
        "reason": {
          "type": "ref",
          "ref": "#reasonType"
        },
        "comment": {
          "type": "string",
          "description": "Optional comment about the decision"
        },
        "createdBy": {
          "type": "string",
          "format": "did",
          "description": "DID of the user added the rule."
        },
        "createdAt": {
          "type": "string",
          "format": "datetime",
          "description": "Timestamp when the rule was created"
        },
        "updatedAt": {
          "type": "string",
          "format": "datetime",
          "description": "Timestamp when the rule was last updated"
        }
      }
    }
  }
}
```
