---
title: com.atproto.lexicon.schema
description: Reference for the com.atproto.lexicon.schema lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `record`

Representation of Lexicon schemas themselves, when published as atproto records. Note that the schema language is not defined in Lexicon; this meta schema currently only includes a single version field ('lexicon'). See the atproto specifications for description of the other expected top-level fields ('id', 'defs', etc).

**Record Key:** `nsid`

**Record Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `lexicon` | `integer` | ✅  | Indicates the 'version' of the Lexicon language. Must be '1' for the current atproto/Lexicon schema system. |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.lexicon.schema",
  "defs": {
    "main": {
      "type": "record",
      "description": "Representation of Lexicon schemas themselves, when published as atproto records. Note that the schema language is not defined in Lexicon; this meta schema currently only includes a single version field ('lexicon'). See the atproto specifications for description of the other expected top-level fields ('id', 'defs', etc).",
      "key": "nsid",
      "record": {
        "type": "object",
        "required": [
          "lexicon"
        ],
        "properties": {
          "lexicon": {
            "type": "integer",
            "description": "Indicates the 'version' of the Lexicon language. Must be '1' for the current atproto/Lexicon schema system."
          }
        }
      }
    }
  }
}
```
