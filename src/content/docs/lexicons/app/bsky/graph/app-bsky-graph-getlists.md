---
title: app.bsky.graph.getLists
description: Reference for the app.bsky.graph.getLists lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Enumerates the lists created by a specified account (actor).

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `actor` | `string` | ✅  | The account (actor) to enumerate lists from. | Format: `at-identifier` |
| `limit` | `integer` | ❌  |  | Min: 1<br/>Max: 100<br/>Default: `50` |
| `cursor` | `string` | ❌  |  |  |
| `purposes` | Array of `string` | ❌  | Optional filter by list purpose. If not specified, all supported types are returned. |  |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `cursor` | `string` | ❌  |  |  |
| `lists` | Array of [`app.bsky.graph.defs#listView`](/lexicons/app/bsky/graph/defs#listView) | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.graph.getLists",
  "defs": {
    "main": {
      "type": "query",
      "description": "Enumerates the lists created by a specified account (actor).",
      "parameters": {
        "type": "params",
        "required": [
          "actor"
        ],
        "properties": {
          "actor": {
            "type": "string",
            "format": "at-identifier",
            "description": "The account (actor) to enumerate lists from."
          },
          "limit": {
            "type": "integer",
            "minimum": 1,
            "maximum": 100,
            "default": 50
          },
          "cursor": {
            "type": "string"
          },
          "purposes": {
            "type": "array",
            "description": "Optional filter by list purpose. If not specified, all supported types are returned.",
            "items": {
              "type": "string",
              "knownValues": [
                "modlist",
                "curatelist"
              ]
            }
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "lists"
          ],
          "properties": {
            "cursor": {
              "type": "string"
            },
            "lists": {
              "type": "array",
              "items": {
                "type": "ref",
                "ref": "app.bsky.graph.defs#listView"
              }
            }
          }
        }
      }
    }
  }
}
```
