---
title: tools.ozone.signature.defs
description: Reference for the tools.ozone.signature.defs lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="sigdetail"></a>
### `sigDetail`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `property` | `string` | ✅  |  |  |
| `value` | `string` | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "tools.ozone.signature.defs",
  "defs": {
    "sigDetail": {
      "type": "object",
      "required": [
        "property",
        "value"
      ],
      "properties": {
        "property": {
          "type": "string"
        },
        "value": {
          "type": "string"
        }
      }
    }
  }
}
```
