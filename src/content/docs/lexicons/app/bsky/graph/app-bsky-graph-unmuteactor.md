---
title: app.bsky.graph.unmuteActor
description: Reference for the app.bsky.graph.unmuteActor lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Unmutes the specified account. Requires auth.

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `actor` | `string` | ✅  |  | Format: `at-identifier` |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.graph.unmuteActor",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Unmutes the specified account. Requires auth.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "actor"
          ],
          "properties": {
            "actor": {
              "type": "string",
              "format": "at-identifier"
            }
          }
        }
      }
    }
  }
}
```
