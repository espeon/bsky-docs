---
title: tools.ozone.set.defs
description: Reference for the tools.ozone.set.defs lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="set"></a>
### `set`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `name` | `string` | ✅  |  | Min Length: 3<br/>Max Length: 128 |
| `description` | `string` | ❌  |  | Max Length: 10240<br/>Max Graphemes: 1024 |

---

<a name="setview"></a>
### `setView`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `name` | `string` | ✅  |  | Min Length: 3<br/>Max Length: 128 |
| `description` | `string` | ❌  |  | Max Length: 10240<br/>Max Graphemes: 1024 |
| `setSize` | `integer` | ✅  |  |  |
| `createdAt` | `string` | ✅  |  | Format: `datetime` |
| `updatedAt` | `string` | ✅  |  | Format: `datetime` |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "tools.ozone.set.defs",
  "defs": {
    "set": {
      "type": "object",
      "required": [
        "name"
      ],
      "properties": {
        "name": {
          "type": "string",
          "minLength": 3,
          "maxLength": 128
        },
        "description": {
          "type": "string",
          "maxGraphemes": 1024,
          "maxLength": 10240
        }
      }
    },
    "setView": {
      "type": "object",
      "required": [
        "name",
        "setSize",
        "createdAt",
        "updatedAt"
      ],
      "properties": {
        "name": {
          "type": "string",
          "minLength": 3,
          "maxLength": 128
        },
        "description": {
          "type": "string",
          "maxGraphemes": 1024,
          "maxLength": 10240
        },
        "setSize": {
          "type": "integer"
        },
        "createdAt": {
          "type": "string",
          "format": "datetime"
        },
        "updatedAt": {
          "type": "string",
          "format": "datetime"
        }
      }
    }
  }
}
```
