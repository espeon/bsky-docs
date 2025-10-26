---
title: tools.ozone.moderation.getRecords
description: Reference for the tools.ozone.moderation.getRecords lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Get details about some records.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `uris` | Array of `string` | ✅  |  | Max Items: 100 |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `records` | Array of Union of:<br/>&nbsp;&nbsp;[`tools.ozone.moderation.defs#recordViewDetail`](lexicons/tools/ozone/moderation/defs#recordViewDetail)<br/>&nbsp;&nbsp;[`tools.ozone.moderation.defs#recordViewNotFound`](lexicons/tools/ozone/moderation/defs#recordViewNotFound) | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "tools.ozone.moderation.getRecords",
  "defs": {
    "main": {
      "type": "query",
      "description": "Get details about some records.",
      "parameters": {
        "type": "params",
        "required": [
          "uris"
        ],
        "properties": {
          "uris": {
            "type": "array",
            "maxLength": 100,
            "items": {
              "type": "string",
              "format": "at-uri"
            }
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "records"
          ],
          "properties": {
            "records": {
              "type": "array",
              "items": {
                "type": "union",
                "refs": [
                  "tools.ozone.moderation.defs#recordViewDetail",
                  "tools.ozone.moderation.defs#recordViewNotFound"
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
