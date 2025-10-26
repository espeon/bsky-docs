---
title: tools.ozone.set.upsertSet
description: Reference for the tools.ozone.set.upsertSet lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Create or update set metadata

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** [`tools.ozone.set.defs#set`](/lexicons/tools/ozone/set/defs#set)


**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** [`tools.ozone.set.defs#setView`](/lexicons/tools/ozone/set/defs#setView)



---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "tools.ozone.set.upsertSet",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Create or update set metadata",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "ref",
          "ref": "tools.ozone.set.defs#set"
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "ref",
          "ref": "tools.ozone.set.defs#setView"
        }
      }
    }
  }
}
```
