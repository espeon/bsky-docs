---
title: com.atproto.temp.fetchLabels
description: Reference for the com.atproto.temp.fetchLabels lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

DEPRECATED: use queryLabels or subscribeLabels instead -- Fetch all labels from a labeler created after a certain date.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `since` | `integer` | ❌  |  |  |
| `limit` | `integer` | ❌  |  | Min: 1<br/>Max: 250<br/>Default: `50` |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `labels` | Array of [`com.atproto.label.defs#label`](lexicons/com/atproto/label/defs#label) | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.temp.fetchLabels",
  "defs": {
    "main": {
      "type": "query",
      "description": "DEPRECATED: use queryLabels or subscribeLabels instead -- Fetch all labels from a labeler created after a certain date.",
      "parameters": {
        "type": "params",
        "properties": {
          "since": {
            "type": "integer"
          },
          "limit": {
            "type": "integer",
            "minimum": 1,
            "maximum": 250,
            "default": 50
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
