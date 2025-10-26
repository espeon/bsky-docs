---
title: com.atproto.repo.defs
description: Reference for the com.atproto.repo.defs lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="commitmeta"></a>
### `commitMeta`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `cid` | `string` | ✅  |  | Format: `cid` |
| `rev` | `string` | ✅  |  | Format: `tid` |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.repo.defs",
  "defs": {
    "commitMeta": {
      "type": "object",
      "required": [
        "cid",
        "rev"
      ],
      "properties": {
        "cid": {
          "type": "string",
          "format": "cid"
        },
        "rev": {
          "type": "string",
          "format": "tid"
        }
      }
    }
  }
}
```
