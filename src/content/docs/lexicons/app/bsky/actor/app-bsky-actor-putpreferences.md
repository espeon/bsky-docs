---
title: app.bsky.actor.putPreferences
description: Reference for the app.bsky.actor.putPreferences lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Set the private preferences attached to the account.

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `preferences` | [`app.bsky.actor.defs#preferences`](/app/bsky/actor/defs#preferences) | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.actor.putPreferences",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Set the private preferences attached to the account.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "preferences"
          ],
          "properties": {
            "preferences": {
              "type": "ref",
              "ref": "app.bsky.actor.defs#preferences"
            }
          }
        }
      }
    }
  }
}
```
