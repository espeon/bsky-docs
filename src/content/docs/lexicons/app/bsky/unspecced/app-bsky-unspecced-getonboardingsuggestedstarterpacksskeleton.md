---
title: app.bsky.unspecced.getOnboardingSuggestedStarterPacksSkeleton
description: Reference for the app.bsky.unspecced.getOnboardingSuggestedStarterPacksSkeleton lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Get a skeleton of suggested starterpacks for onboarding. Intended to be called and hydrated by app.bsky.unspecced.getOnboardingSuggestedStarterPacks

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `viewer` | `string` | ❌  | DID of the account making the request (not included for public/unauthenticated queries). | Format: `did` |
| `limit` | `integer` | ❌  |  | Min: 1<br/>Max: 25<br/>Default: `10` |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `starterPacks` | Array of `string` | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.unspecced.getOnboardingSuggestedStarterPacksSkeleton",
  "defs": {
    "main": {
      "type": "query",
      "description": "Get a skeleton of suggested starterpacks for onboarding. Intended to be called and hydrated by app.bsky.unspecced.getOnboardingSuggestedStarterPacks",
      "parameters": {
        "type": "params",
        "properties": {
          "viewer": {
            "type": "string",
            "format": "did",
            "description": "DID of the account making the request (not included for public/unauthenticated queries)."
          },
          "limit": {
            "type": "integer",
            "minimum": 1,
            "maximum": 25,
            "default": 10
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "starterPacks"
          ],
          "properties": {
            "starterPacks": {
              "type": "array",
              "items": {
                "type": "string",
                "format": "at-uri"
              }
            }
          }
        }
      }
    }
  }
}
```
