---
title: tools.ozone.signature.findCorrelation
description: Reference for the tools.ozone.signature.findCorrelation lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Find all correlated threat signatures between 2 or more accounts.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `dids` | Array of `string` | ✅  |  |  |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `details` | Array of [`tools.ozone.signature.defs#sigDetail`](lexicons/tools/ozone/signature/defs#sigDetail) | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "tools.ozone.signature.findCorrelation",
  "defs": {
    "main": {
      "type": "query",
      "description": "Find all correlated threat signatures between 2 or more accounts.",
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
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "details"
          ],
          "properties": {
            "details": {
              "type": "array",
              "items": {
                "type": "ref",
                "ref": "tools.ozone.signature.defs#sigDetail"
              }
            }
          }
        }
      }
    }
  }
}
```
