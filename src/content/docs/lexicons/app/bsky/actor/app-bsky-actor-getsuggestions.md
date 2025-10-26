---
title: app.bsky.actor.getSuggestions
description: Reference for the app.bsky.actor.getSuggestions lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Get a list of suggested actors. Expected use is discovery of accounts to follow during new account onboarding.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `limit` | `integer` | ❌  |  | Min: 1<br/>Max: 100<br/>Default: `50` |
| `cursor` | `string` | ❌  |  |  |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `cursor` | `string` | ❌  |  |  |
| `actors` | Array of [`app.bsky.actor.defs#profileView`](/app/bsky/actor/defs#profileView) | ✅  |  |  |
| `recId` | `integer` | ❌  | Snowflake for this recommendation, use when submitting recommendation events. |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.actor.getSuggestions",
  "defs": {
    "main": {
      "type": "query",
      "description": "Get a list of suggested actors. Expected use is discovery of accounts to follow during new account onboarding.",
      "parameters": {
        "type": "params",
        "properties": {
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
            "actors"
          ],
          "properties": {
            "cursor": {
              "type": "string"
            },
            "actors": {
              "type": "array",
              "items": {
                "type": "ref",
                "ref": "app.bsky.actor.defs#profileView"
              }
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
