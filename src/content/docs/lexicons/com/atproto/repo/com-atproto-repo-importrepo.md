---
title: com.atproto.repo.importRepo
description: Reference for the com.atproto.repo.importRepo lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Import a repo in the form of a CAR file. Requires Content-Length HTTP header to be set.

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/vnd.ipld.car`
- **Schema:**

_Schema not defined._

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.repo.importRepo",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Import a repo in the form of a CAR file. Requires Content-Length HTTP header to be set.",
      "input": {
        "encoding": "application/vnd.ipld.car"
      }
    }
  }
}
```
