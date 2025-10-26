---
title: app.bsky.unspecced.getSuggestedUsersSkeleton
description: Reference for the app.bsky.unspecced.getSuggestedUsersSkeleton lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Get a skeleton of suggested users. Intended to be called and hydrated by app.bsky.unspecced.getSuggestedUsers

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `viewer` | `string` | ❌  | DID of the account making the request (not included for public/unauthenticated queries). | Format: `did` |
| `category` | `string` | ❌  | Category of users to get suggestions for. |  |
| `limit` | `integer` | ❌  |  | Min: 1<br/>Max: 50<br/>Default: `25` |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `dids` | Array of `string` | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.unspecced.getSuggestedUsersSkeleton",
  "defs": {
    "main": {
      "type": "query",
      "description": "Get a skeleton of suggested users. Intended to be called and hydrated by app.bsky.unspecced.getSuggestedUsers",
      "parameters": {
        "type": "params",
        "properties": {
          "viewer": {
            "type": "string",
            "format": "did",
            "description": "DID of the account making the request (not included for public/unauthenticated queries)."
          },
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
            "dids"
          ],
          "properties": {
            "dids": {
              "type": "array",
              "items": {
                "type": "string",
                "format": "did"
              }
            }
          }
        }
      }
    }
  }
}
```
