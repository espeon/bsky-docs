---
title: app.bsky.unspecced.getAgeAssuranceState
description: Reference for the app.bsky.unspecced.getAgeAssuranceState lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Returns the current state of the age assurance process for an account. This is used to check if the user has completed age assurance or if further action is required.

**Parameters:** _(None defined)_

**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** [`app.bsky.unspecced.defs#ageAssuranceState`](/lexicons/app/bsky/unspecced/defs#ageAssuranceState)



---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.unspecced.getAgeAssuranceState",
  "defs": {
    "main": {
      "type": "query",
      "description": "Returns the current state of the age assurance process for an account. This is used to check if the user has completed age assurance or if further action is required.",
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "ref",
          "ref": "app.bsky.unspecced.defs#ageAssuranceState"
        }
      }
    }
  }
}
```
