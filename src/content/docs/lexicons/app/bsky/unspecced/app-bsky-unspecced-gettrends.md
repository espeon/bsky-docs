---
title: app.bsky.unspecced.getTrends
description: Reference for the app.bsky.unspecced.getTrends lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Get the current trends on the network

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
| `trends` | Array of [`app.bsky.unspecced.defs#trendView`](/lexicons/app/bsky/unspecced/app-bsky-unspecced-defs#trendview) | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.unspecced.getTrends",
  "defs": {
    "main": {
      "type": "query",
      "description": "Get the current trends on the network",
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
            "trends"
          ],
          "properties": {
            "trends": {
              "type": "array",
              "items": {
                "type": "ref",
                "ref": "app.bsky.unspecced.defs#trendView"
              }
            }
          }
        }
      }
    }
  }
}
```
