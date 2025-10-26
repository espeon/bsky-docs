---
title: tools.ozone.moderation.getReporterStats
description: Reference for the tools.ozone.moderation.getReporterStats lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Get reporter stats for a list of users.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `dids` | Array of `string` | ✅  |  | Max Items: 100 |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `stats` | Array of [`tools.ozone.moderation.defs#reporterStats`](lexicons/tools/ozone/moderation/defs#reporterStats) | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "tools.ozone.moderation.getReporterStats",
  "defs": {
    "main": {
      "type": "query",
      "description": "Get reporter stats for a list of users.",
      "parameters": {
        "type": "params",
        "required": [
          "dids"
        ],
        "properties": {
          "dids": {
            "type": "array",
            "maxLength": 100,
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
            "stats"
          ],
          "properties": {
            "stats": {
              "type": "array",
              "items": {
                "type": "ref",
                "ref": "tools.ozone.moderation.defs#reporterStats"
              }
            }
          }
        }
      }
    }
  }
}
```
