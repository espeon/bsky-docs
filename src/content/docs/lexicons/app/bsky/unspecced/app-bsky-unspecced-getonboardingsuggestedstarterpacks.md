---
title: app.bsky.unspecced.getOnboardingSuggestedStarterPacks
description: Reference for the app.bsky.unspecced.getOnboardingSuggestedStarterPacks lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Get a list of suggested starterpacks for onboarding

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `limit` | `integer` | ❌  |  | Min: 1<br/>Max: 25<br/>Default: `10` |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `starterPacks` | Array of [`app.bsky.graph.defs#starterPackView`](/lexicons/app/bsky/graph/defs#starterPackView) | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.unspecced.getOnboardingSuggestedStarterPacks",
  "defs": {
    "main": {
      "type": "query",
      "description": "Get a list of suggested starterpacks for onboarding",
      "parameters": {
        "type": "params",
        "properties": {
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
                "type": "ref",
                "ref": "app.bsky.graph.defs#starterPackView"
              }
            }
          }
        }
      }
    }
  }
}
```
