---
title: app.bsky.graph.getList
description: Reference for the app.bsky.graph.getList lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Gets a 'view' (with additional context) of a specified list.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `list` | `string` | ✅  | Reference (AT-URI) of the list record to hydrate. | Format: `at-uri` |
| `limit` | `integer` | ❌  |  | Min: 1<br/>Max: 100<br/>Default: `50` |
| `cursor` | `string` | ❌  |  |  |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `cursor` | `string` | ❌  |  |  |
| `list` | [`app.bsky.graph.defs#listView`](/lexicons/app/bsky/graph/defs#listView) | ✅  |  |  |
| `items` | Array of [`app.bsky.graph.defs#listItemView`](/lexicons/app/bsky/graph/defs#listItemView) | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.graph.getList",
  "defs": {
    "main": {
      "type": "query",
      "description": "Gets a 'view' (with additional context) of a specified list.",
      "parameters": {
        "type": "params",
        "required": [
          "list"
        ],
        "properties": {
          "list": {
            "type": "string",
            "format": "at-uri",
            "description": "Reference (AT-URI) of the list record to hydrate."
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
            "list",
            "items"
          ],
          "properties": {
            "cursor": {
              "type": "string"
            },
            "list": {
              "type": "ref",
              "ref": "app.bsky.graph.defs#listView"
            },
            "items": {
              "type": "array",
              "items": {
                "type": "ref",
                "ref": "app.bsky.graph.defs#listItemView"
              }
            }
          }
        }
      }
    }
  }
}
```
