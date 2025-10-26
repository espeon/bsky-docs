---
title: app.bsky.graph.getKnownFollowers
description: Reference for the app.bsky.graph.getKnownFollowers lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Enumerates accounts which follow a specified account (actor) and are followed by the viewer.

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
| `subject` | [`app.bsky.actor.defs#profileView`](/lexicons/app/bsky/actor/app-bsky-actor-defs#profileview) | ✅  |  |  |
| `cursor` | `string` | ❌  |  |  |
| `followers` | Array of [`app.bsky.actor.defs#profileView`](/lexicons/app/bsky/actor/app-bsky-actor-defs#profileview) | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.graph.getKnownFollowers",
  "defs": {
    "main": {
      "type": "query",
      "description": "Enumerates accounts which follow a specified account (actor) and are followed by the viewer.",
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
            "subject",
            "followers"
          ],
          "properties": {
            "subject": {
              "type": "ref",
              "ref": "app.bsky.actor.defs#profileView"
            },
            "cursor": {
              "type": "string"
            },
            "followers": {
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
