---
title: app.bsky.graph.getStarterPacks
description: Reference for the app.bsky.graph.getStarterPacks lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Get views for a list of starter packs.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `uris` | Array of `string` | ✅  |  | Max Items: 25 |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `starterPacks` | Array of [`app.bsky.graph.defs#starterPackViewBasic`](/lexicons/app/bsky/graph/defs#starterPackViewBasic) | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.graph.getStarterPacks",
  "defs": {
    "main": {
      "type": "query",
      "description": "Get views for a list of starter packs.",
      "parameters": {
        "type": "params",
        "required": [
          "uris"
        ],
        "properties": {
          "uris": {
            "type": "array",
            "items": {
              "type": "string",
              "format": "at-uri"
            },
            "maxLength": 25
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "starterPacks"
          ],
          "properties": {
            "starterPacks": {
              "type": "array",
              "items": {
                "type": "ref",
                "ref": "app.bsky.graph.defs#starterPackViewBasic"
              }
            }
          }
        }
      }
    }
  }
}
```
