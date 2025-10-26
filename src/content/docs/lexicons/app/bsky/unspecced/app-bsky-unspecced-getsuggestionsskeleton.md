---
title: app.bsky.unspecced.getSuggestionsSkeleton
description: Reference for the app.bsky.unspecced.getSuggestionsSkeleton lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Get a skeleton of suggested actors. Intended to be called and then hydrated through app.bsky.actor.getSuggestions

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `viewer` | `string` | ❌  | DID of the account making the request (not included for public/unauthenticated queries). Used to boost followed accounts in ranking. | Format: `did` |
| `limit` | `integer` | ❌  |  | Min: 1<br/>Max: 100<br/>Default: `50` |
| `cursor` | `string` | ❌  |  |  |
| `relativeToDid` | `string` | ❌  | DID of the account to get suggestions relative to. If not provided, suggestions will be based on the viewer. | Format: `did` |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `cursor` | `string` | ❌  |  |  |
| `actors` | Array of [`app.bsky.unspecced.defs#skeletonSearchActor`](/lexicons/app/bsky/unspecced/defs#skeletonSearchActor) | ✅  |  |  |
| `relativeToDid` | `string` | ❌  | DID of the account these suggestions are relative to. If this is returned undefined, suggestions are based on the viewer. | Format: `did` |
| `recId` | `integer` | ❌  | Snowflake for this recommendation, use when submitting recommendation events. |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.unspecced.getSuggestionsSkeleton",
  "defs": {
    "main": {
      "type": "query",
      "description": "Get a skeleton of suggested actors. Intended to be called and then hydrated through app.bsky.actor.getSuggestions",
      "parameters": {
        "type": "params",
        "properties": {
          "viewer": {
            "type": "string",
            "format": "did",
            "description": "DID of the account making the request (not included for public/unauthenticated queries). Used to boost followed accounts in ranking."
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
          "relativeToDid": {
            "type": "string",
            "format": "did",
            "description": "DID of the account to get suggestions relative to. If not provided, suggestions will be based on the viewer."
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
                "ref": "app.bsky.unspecced.defs#skeletonSearchActor"
              }
            },
            "relativeToDid": {
              "type": "string",
              "format": "did",
              "description": "DID of the account these suggestions are relative to. If this is returned undefined, suggestions are based on the viewer."
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
