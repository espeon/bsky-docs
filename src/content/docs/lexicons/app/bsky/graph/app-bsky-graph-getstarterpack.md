---
title: app.bsky.graph.getStarterPack
description: Reference for the app.bsky.graph.getStarterPack lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Gets a view of a starter pack.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `starterPack` | `string` | ✅  | Reference (AT-URI) of the starter pack record. | Format: `at-uri` |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `starterPack` | [`app.bsky.graph.defs#starterPackView`](/app/bsky/graph/defs#starterPackView) | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.graph.getStarterPack",
  "defs": {
    "main": {
      "type": "query",
      "description": "Gets a view of a starter pack.",
      "parameters": {
        "type": "params",
        "required": [
          "starterPack"
        ],
        "properties": {
          "starterPack": {
            "type": "string",
            "format": "at-uri",
            "description": "Reference (AT-URI) of the starter pack record."
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "starterPack"
          ],
          "properties": {
            "starterPack": {
              "type": "ref",
              "ref": "app.bsky.graph.defs#starterPackView"
            }
          }
        }
      }
    }
  }
}
```
