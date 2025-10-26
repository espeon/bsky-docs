---
title: app.bsky.graph.getSuggestedFollowsByActor
description: Reference for the app.bsky.graph.getSuggestedFollowsByActor lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Enumerates follows similar to a given account (actor). Expected use is to recommend additional accounts immediately after following one account.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `actor` | `string` | ✅  |  | Format: `at-identifier` |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `suggestions` | Array of [`app.bsky.actor.defs#profileView`](lexicons/app/bsky/actor/defs#profileView) | ✅  |  |  |
| `isFallback` | `boolean` | ❌  | If true, response has fallen-back to generic results, and is not scoped using relativeToDid | Default: `false` |
| `recId` | `integer` | ❌  | Snowflake for this recommendation, use when submitting recommendation events. |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.graph.getSuggestedFollowsByActor",
  "defs": {
    "main": {
      "type": "query",
      "description": "Enumerates follows similar to a given account (actor). Expected use is to recommend additional accounts immediately after following one account.",
      "parameters": {
        "type": "params",
        "required": [
          "actor"
        ],
        "properties": {
          "actor": {
            "type": "string",
            "format": "at-identifier"
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "suggestions"
          ],
          "properties": {
            "suggestions": {
              "type": "array",
              "items": {
                "type": "ref",
                "ref": "app.bsky.actor.defs#profileView"
              }
            },
            "isFallback": {
              "type": "boolean",
              "description": "If true, response has fallen-back to generic results, and is not scoped using relativeToDid",
              "default": false
            },
            "recId": {
              "type": "integer",
              "description": "Snowflake for this recommendation, use when submitting recommendation events."
            }
          }
        }
      }
    }
  }
}
```
