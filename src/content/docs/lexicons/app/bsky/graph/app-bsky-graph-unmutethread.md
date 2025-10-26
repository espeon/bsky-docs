---
title: app.bsky.graph.unmuteThread
description: Reference for the app.bsky.graph.unmuteThread lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Unmutes the specified thread. Requires auth.

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `root` | `string` | ✅  |  | Format: `at-uri` |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.graph.unmuteThread",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Unmutes the specified thread. Requires auth.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "root"
          ],
          "properties": {
            "root": {
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
