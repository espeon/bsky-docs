---
title: com.atproto.label.queryLabels
description: Reference for the com.atproto.label.queryLabels lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Find labels relevant to the provided AT-URI patterns. Public endpoint for moderation services, though may return different or additional results with auth.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `uriPatterns` | Array of `string` | ✅  | List of AT URI patterns to match (boolean 'OR'). Each may be a prefix (ending with '*'; will match inclusive of the string leading to '*'), or a full URI. |  |
| `sources` | Array of `string` | ❌  | Optional list of label sources (DIDs) to filter on. |  |
| `limit` | `integer` | ❌  |  | Min: 1<br/>Max: 250<br/>Default: `50` |
| `cursor` | `string` | ❌  |  |  |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `cursor` | `string` | ❌  |  |  |
| `labels` | Array of [`com.atproto.label.defs#label`](lexicons/com/atproto/label/defs#label) | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.label.queryLabels",
  "defs": {
    "main": {
      "type": "query",
      "description": "Find labels relevant to the provided AT-URI patterns. Public endpoint for moderation services, though may return different or additional results with auth.",
      "parameters": {
        "type": "params",
        "required": [
          "uriPatterns"
        ],
        "properties": {
          "uriPatterns": {
            "type": "array",
            "items": {
              "type": "string"
            },
            "description": "List of AT URI patterns to match (boolean 'OR'). Each may be a prefix (ending with '*'; will match inclusive of the string leading to '*'), or a full URI."
          },
          "sources": {
            "type": "array",
            "items": {
              "type": "string",
              "format": "did"
            },
            "description": "Optional list of label sources (DIDs) to filter on."
          },
          "limit": {
            "type": "integer",
            "minimum": 1,
            "maximum": 250,
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
            "labels"
          ],
          "properties": {
            "cursor": {
              "type": "string"
            },
            "labels": {
              "type": "array",
              "items": {
                "type": "ref",
                "ref": "com.atproto.label.defs#label"
              }
            }
          }
        }
      }
    }
  }
}
```
