---
title: com.atproto.repo.listRecords
description: Reference for the com.atproto.repo.listRecords lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

List a range of records in a repository, matching a specific collection. Does not require auth.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `repo` | `string` | ✅  | The handle or DID of the repo. | Format: `at-identifier` |
| `collection` | `string` | ✅  | The NSID of the record type. | Format: `nsid` |
| `limit` | `integer` | ❌  | The number of records to return. | Min: 1<br/>Max: 100<br/>Default: `50` |
| `cursor` | `string` | ❌  |  |  |
| `reverse` | `boolean` | ❌  | Flag to reverse the order of the returned records. |  |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `cursor` | `string` | ❌  |  |  |
| `records` | Array of [`#record`](#record) | ✅  |  |  |

---

<a name="record"></a>
### `record`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `uri` | `string` | ✅  |  | Format: `at-uri` |
| `cid` | `string` | ✅  |  | Format: `cid` |
| `value` | `unknown` | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.repo.listRecords",
  "defs": {
    "main": {
      "type": "query",
      "description": "List a range of records in a repository, matching a specific collection. Does not require auth.",
      "parameters": {
        "type": "params",
        "required": [
          "repo",
          "collection"
        ],
        "properties": {
          "repo": {
            "type": "string",
            "format": "at-identifier",
            "description": "The handle or DID of the repo."
          },
          "collection": {
            "type": "string",
            "format": "nsid",
            "description": "The NSID of the record type."
          },
          "limit": {
            "type": "integer",
            "minimum": 1,
            "maximum": 100,
            "default": 50,
            "description": "The number of records to return."
          },
          "cursor": {
            "type": "string"
          },
          "reverse": {
            "type": "boolean",
            "description": "Flag to reverse the order of the returned records."
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
            "cursor": {
              "type": "string"
            },
            "records": {
              "type": "array",
              "items": {
                "type": "ref",
                "ref": "#record"
              }
            }
          }
        }
      }
    },
    "record": {
      "type": "object",
      "required": [
        "uri",
        "cid",
        "value"
      ],
      "properties": {
        "uri": {
          "type": "string",
          "format": "at-uri"
        },
        "cid": {
          "type": "string",
          "format": "cid"
        },
        "value": {
          "type": "unknown"
        }
      }
    }
  }
}
```
