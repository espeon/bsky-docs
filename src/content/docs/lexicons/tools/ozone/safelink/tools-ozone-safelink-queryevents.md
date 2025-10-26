---
title: tools.ozone.safelink.queryEvents
description: Reference for the tools.ozone.safelink.queryEvents lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Query URL safety audit events

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `cursor` | `string` | ❌  | Cursor for pagination |  |
| `limit` | `integer` | ❌  | Maximum number of results to return | Min: 1<br/>Max: 100<br/>Default: `50` |
| `urls` | Array of `string` | ❌  | Filter by specific URLs or domains |  |
| `patternType` | `string` | ❌  | Filter by pattern type |  |
| `sortDirection` | `string` | ❌  | Sort direction | Known Values: `asc`, `desc`<br/>Default: `desc` |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `cursor` | `string` | ❌  | Next cursor for pagination. Only present if there are more results. |  |
| `events` | Array of [`tools.ozone.safelink.defs#event`](/lexicons/tools/ozone/safelink/tools-ozone-safelink-defs#event) | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "tools.ozone.safelink.queryEvents",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Query URL safety audit events",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "properties": {
            "cursor": {
              "type": "string",
              "description": "Cursor for pagination"
            },
            "limit": {
              "type": "integer",
              "minimum": 1,
              "maximum": 100,
              "default": 50,
              "description": "Maximum number of results to return"
            },
            "urls": {
              "type": "array",
              "items": {
                "type": "string"
              },
              "description": "Filter by specific URLs or domains"
            },
            "patternType": {
              "type": "string",
              "description": "Filter by pattern type"
            },
            "sortDirection": {
              "type": "string",
              "knownValues": [
                "asc",
                "desc"
              ],
              "default": "desc",
              "description": "Sort direction"
            }
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "events"
          ],
          "properties": {
            "cursor": {
              "type": "string",
              "description": "Next cursor for pagination. Only present if there are more results."
            },
            "events": {
              "type": "array",
              "items": {
                "type": "ref",
                "ref": "tools.ozone.safelink.defs#event"
              }
            }
          }
        }
      }
    }
  }
}
```
