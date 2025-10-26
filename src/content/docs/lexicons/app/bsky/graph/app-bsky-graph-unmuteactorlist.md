---
title: app.bsky.graph.unmuteActorList
description: Reference for the app.bsky.graph.unmuteActorList lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Unmutes the specified list of accounts. Requires auth.

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `list` | `string` | ✅  |  | Format: `at-uri` |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.graph.unmuteActorList",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Unmutes the specified list of accounts. Requires auth.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "list"
          ],
          "properties": {
            "list": {
              "type": "string",
              "format": "at-uri"
            }
          }
        }
      }
    }
  }
}
```
