---
title: app.bsky.graph.getListsWithMembership
description: Reference for the app.bsky.graph.getListsWithMembership lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Enumerates the lists created by the session user, and includes membership information about `actor` in those lists. Only supports curation and moderation lists (no reference lists, used in starter packs). Requires auth.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `actor` | `string` | ✅  | The account (actor) to check for membership. | Format: `at-identifier` |
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
| `listsWithMembership` | Array of [`#listWithMembership`](#listwithmembership) | ✅  |  |  |

---

<a name="listwithmembership"></a>
### `listWithMembership`

**Type:** `object`

A list and an optional list item indicating membership of a target user to that list.

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `list` | [`app.bsky.graph.defs#listView`](/lexicons/app/bsky/graph/defs#listView) | ✅  |  |  |
| `listItem` | [`app.bsky.graph.defs#listItemView`](/lexicons/app/bsky/graph/defs#listItemView) | ❌  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.graph.getListsWithMembership",
  "defs": {
    "main": {
      "type": "query",
      "description": "Enumerates the lists created by the session user, and includes membership information about `actor` in those lists. Only supports curation and moderation lists (no reference lists, used in starter packs). Requires auth.",
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
            "listsWithMembership"
          ],
          "properties": {
            "cursor": {
              "type": "string"
            },
            "listsWithMembership": {
              "type": "array",
              "items": {
                "type": "ref",
                "ref": "#listWithMembership"
              }
            }
          }
        }
      }
    },
    "listWithMembership": {
      "description": "A list and an optional list item indicating membership of a target user to that list.",
      "type": "object",
      "required": [
        "list"
      ],
      "properties": {
        "list": {
          "type": "ref",
          "ref": "app.bsky.graph.defs#listView"
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
