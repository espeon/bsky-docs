---
title: app.bsky.graph.getStarterPacksWithMembership
description: Reference for the app.bsky.graph.getStarterPacksWithMembership lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Enumerates the starter packs created by the session user, and includes membership information about `actor` in those starter packs. Requires auth.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `actor` | `string` | ✅  | The account (actor) to check for membership. | Format: `at-identifier` |
| `limit` | `integer` | ❌  |  | Min: 1<br/>Max: 100<br/>Default: `50` |
| `cursor` | `string` | ❌  |  |  |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `cursor` | `string` | ❌  |  |  |
| `starterPacksWithMembership` | Array of [`#starterPackWithMembership`](#starterpackwithmembership) | ✅  |  |  |

---

<a name="starterpackwithmembership"></a>
### `starterPackWithMembership`

**Type:** `object`

A starter pack and an optional list item indicating membership of a target user to that starter pack.

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `starterPack` | [`app.bsky.graph.defs#starterPackView`](/lexicons/app/bsky/graph/app-bsky-graph-defs#starterpackview) | ✅  |  |  |
| `listItem` | [`app.bsky.graph.defs#listItemView`](/lexicons/app/bsky/graph/app-bsky-graph-defs#listitemview) | ❌  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.graph.getStarterPacksWithMembership",
  "defs": {
    "main": {
      "type": "query",
      "description": "Enumerates the starter packs created by the session user, and includes membership information about `actor` in those starter packs. Requires auth.",
      "parameters": {
        "type": "params",
        "required": [
          "actor"
        ],
        "properties": {
          "actor": {
            "type": "string",
            "format": "at-identifier",
            "description": "The account (actor) to check for membership."
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
            "starterPacksWithMembership"
          ],
          "properties": {
            "cursor": {
              "type": "string"
            },
            "starterPacksWithMembership": {
              "type": "array",
              "items": {
                "type": "ref",
                "ref": "#starterPackWithMembership"
              }
            }
          }
        }
      }
    },
    "starterPackWithMembership": {
      "description": "A starter pack and an optional list item indicating membership of a target user to that starter pack.",
      "type": "object",
      "required": [
        "starterPack"
      ],
      "properties": {
        "starterPack": {
          "type": "ref",
          "ref": "app.bsky.graph.defs#starterPackView"
        },
        "listItem": {
          "type": "ref",
          "ref": "app.bsky.graph.defs#listItemView"
        }
      }
    }
  }
}
```
