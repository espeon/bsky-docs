---
title: com.atproto.repo.strongRef
description: A URI with a content-hash fingerprint.
---
A URI with a content-hash fingerprint.

**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `uri` | `string` | ✅  |  | Format: `at-uri` |
| `cid` | `string` | ✅  |  | Format: `cid` |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.repo.strongRef",
  "description": "A URI with a content-hash fingerprint.",
  "defs": {
    "main": {
      "type": "object",
      "required": [
        "uri",
        "cid"
      ],
      "properties": {
        "uri": {
          "type": "string",
          "format": "at-uri"
        },
        "cid": {
          "type": "string",
          "format": "cid"
        }
      }
    }
  }
}
```
