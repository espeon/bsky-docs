---
title: com.atproto.repo.listMissingBlobs
description: Reference for the com.atproto.repo.listMissingBlobs lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Returns a list of missing blobs for the requesting account. Intended to be used in the account migration flow.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `limit` | `integer` | ❌  |  | Min: 1<br/>Max: 1000<br/>Default: `500` |
| `cursor` | `string` | ❌  |  |  |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `cursor` | `string` | ❌  |  |  |
| `blobs` | Array of [`#recordBlob`](#recordblob) | ✅  |  |  |

---

<a name="recordblob"></a>
### `recordBlob`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `cid` | `string` | ✅  |  | Format: `cid` |
| `recordUri` | `string` | ✅  |  | Format: `at-uri` |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.repo.listMissingBlobs",
  "defs": {
    "main": {
      "type": "query",
      "description": "Returns a list of missing blobs for the requesting account. Intended to be used in the account migration flow.",
      "parameters": {
        "type": "params",
        "properties": {
          "limit": {
            "type": "integer",
            "minimum": 1,
            "maximum": 1000,
            "default": 500
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
            "blobs"
          ],
          "properties": {
            "cursor": {
              "type": "string"
            },
            "blobs": {
              "type": "array",
              "items": {
                "type": "ref",
                "ref": "#recordBlob"
              }
            }
          }
        }
      }
    },
    "recordBlob": {
      "type": "object",
      "required": [
        "cid",
        "recordUri"
      ],
      "properties": {
        "cid": {
          "type": "string",
          "format": "cid"
        },
        "recordUri": {
          "type": "string",
          "format": "at-uri"
        }
      }
    }
  }
}
```
