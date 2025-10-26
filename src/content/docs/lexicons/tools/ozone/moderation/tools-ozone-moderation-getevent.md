---
title: tools.ozone.moderation.getEvent
description: Reference for the tools.ozone.moderation.getEvent lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Get details about a moderation event.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `id` | `integer` | ✅  |  |  |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** [`tools.ozone.moderation.defs#modEventViewDetail`](/tools/ozone/moderation/defs#modEventViewDetail)



---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "tools.ozone.moderation.getEvent",
  "defs": {
    "main": {
      "type": "query",
      "description": "Get details about a moderation event.",
      "parameters": {
        "type": "params",
        "required": [
          "id"
        ],
        "properties": {
          "id": {
            "type": "integer"
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "ref",
          "ref": "tools.ozone.moderation.defs#modEventViewDetail"
        }
      }
    }
  }
}
```
