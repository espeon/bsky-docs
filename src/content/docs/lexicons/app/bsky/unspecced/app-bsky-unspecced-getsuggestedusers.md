---
title: app.bsky.unspecced.getSuggestedUsers
description: Reference for the app.bsky.unspecced.getSuggestedUsers lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Get a list of suggested users

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `category` | `string` | ❌  | Category of users to get suggestions for. |  |
| `limit` | `integer` | ❌  |  | Min: 1<br/>Max: 50<br/>Default: `25` |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `actors` | Array of [`app.bsky.actor.defs#profileView`](/app/bsky/actor/defs#profileView) | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.unspecced.getSuggestedUsers",
  "defs": {
    "main": {
      "type": "query",
      "description": "Get a list of suggested users",
      "parameters": {
        "type": "params",
        "properties": {
          "category": {
            "type": "string",
            "description": "Category of users to get suggestions for."
          },
          "limit": {
            "type": "integer",
            "minimum": 1,
            "maximum": 50,
            "default": 25
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "actors"
          ],
          "properties": {
            "actors": {
              "type": "array",
              "items": {
                "type": "ref",
                "ref": "app.bsky.actor.defs#profileView"
              }
            }
          }
        }
      }
    }
  }
}
```
