---
title: app.bsky.graph.getActorStarterPacks
description: Reference for the app.bsky.graph.getActorStarterPacks lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Get a list of starter packs created by the actor.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `actor` | `string` | ✅  |  | Format: `at-identifier` |
| `limit` | `integer` | ❌  |  | Min: 1<br/>Max: 100<br/>Default: `50` |
| `cursor` | `string` | ❌  |  |  |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `cursor` | `string` | ❌  |  |  |
| `starterPacks` | Array of [`app.bsky.graph.defs#starterPackViewBasic`](/lexicons/app/bsky/graph/app-bsky-graph-defs#starterpackviewbasic) | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.graph.getActorStarterPacks",
  "defs": {
    "main": {
      "type": "query",
      "description": "Get a list of starter packs created by the actor.",
      "parameters": {
        "type": "params",
        "required": [
          "actor"
        ],
        "properties": {
          "actor": {
            "type": "string",
            "format": "at-identifier"
          },
          "limit": {
            "type": "integer",
            "minimum": 1,
            "maximum": 100,
            "default": 50
          },
          "cursor": {
            "type": "string"
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
            "cursor": {
              "type": "string"
            },
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
