---
title: app.bsky.labeler.getServices
description: Reference for the app.bsky.labeler.getServices lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Get information about a list of labeler services.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `dids` | Array of `string` | ✅  |  |  |
| `detailed` | `boolean` | ❌  |  | Default: `false` |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `views` | Array of Union of:<br/>&nbsp;&nbsp;[`app.bsky.labeler.defs#labelerView`](lexicons/app/bsky/labeler/defs#labelerView)<br/>&nbsp;&nbsp;[`app.bsky.labeler.defs#labelerViewDetailed`](lexicons/app/bsky/labeler/defs#labelerViewDetailed) | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.labeler.getServices",
  "defs": {
    "main": {
      "type": "query",
      "description": "Get information about a list of labeler services.",
      "parameters": {
        "type": "params",
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
          },
          "detailed": {
            "type": "boolean",
            "default": false
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "views"
          ],
          "properties": {
            "views": {
              "type": "array",
              "items": {
                "type": "union",
                "refs": [
                  "app.bsky.labeler.defs#labelerView",
                  "app.bsky.labeler.defs#labelerViewDetailed"
                ]
              }
            }
          }
        }
      }
    }
  }
}
```
