---
title: com.atproto.temp.checkSignupQueue
description: Reference for the com.atproto.temp.checkSignupQueue lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Check accounts location in signup queue.

**Parameters:** _(None defined)_

**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `activated` | `boolean` | ✅  |  |  |
| `placeInQueue` | `integer` | ❌  |  |  |
| `estimatedTimeMs` | `integer` | ❌  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.temp.checkSignupQueue",
  "defs": {
    "main": {
      "type": "query",
      "description": "Check accounts location in signup queue.",
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "activated"
          ],
          "properties": {
            "activated": {
              "type": "boolean"
            },
            "placeInQueue": {
              "type": "integer"
            },
            "estimatedTimeMs": {
              "type": "integer"
            }
          }
        }
      }
    }
  }
}
```
