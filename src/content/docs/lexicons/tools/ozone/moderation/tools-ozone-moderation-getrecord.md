---
title: tools.ozone.moderation.getRecord
description: Reference for the tools.ozone.moderation.getRecord lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Get details about a record.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `uri` | `string` | ✅  |  | Format: `at-uri` |
| `cid` | `string` | ❌  |  | Format: `cid` |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** [`tools.ozone.moderation.defs#recordViewDetail`](lexicons/tools/ozone/moderation/defs#recordViewDetail)


**Possible Errors:**

- `RecordNotFound`

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "tools.ozone.moderation.getRecord",
  "defs": {
    "main": {
      "type": "query",
      "description": "Get details about a record.",
      "parameters": {
        "type": "params",
        "required": [
          "uri"
        ],
        "properties": {
          "uri": {
            "type": "string",
            "format": "at-uri"
          },
          "cid": {
            "type": "string",
            "format": "cid"
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "ref",
          "ref": "tools.ozone.moderation.defs#recordViewDetail"
        }
      },
      "errors": [
        {
          "name": "RecordNotFound"
        }
      ]
    }
  }
}
```
