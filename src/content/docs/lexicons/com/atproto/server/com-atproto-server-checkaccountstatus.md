---
title: com.atproto.server.checkAccountStatus
description: Reference for the com.atproto.server.checkAccountStatus lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Returns the status of an account, especially as pertaining to import or recovery. Can be called many times over the course of an account migration. Requires auth and can only be called pertaining to oneself.

**Parameters:** _(None defined)_

**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `activated` | `boolean` | ✅  |  |  |
| `validDid` | `boolean` | ✅  |  |  |
| `repoCommit` | `string` | ✅  |  | Format: `cid` |
| `repoRev` | `string` | ✅  |  |  |
| `repoBlocks` | `integer` | ✅  |  |  |
| `indexedRecords` | `integer` | ✅  |  |  |
| `privateStateValues` | `integer` | ✅  |  |  |
| `expectedBlobs` | `integer` | ✅  |  |  |
| `importedBlobs` | `integer` | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.server.checkAccountStatus",
  "defs": {
    "main": {
      "type": "query",
      "description": "Returns the status of an account, especially as pertaining to import or recovery. Can be called many times over the course of an account migration. Requires auth and can only be called pertaining to oneself.",
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "activated",
            "validDid",
            "repoCommit",
            "repoRev",
            "repoBlocks",
            "indexedRecords",
            "privateStateValues",
            "expectedBlobs",
            "importedBlobs"
          ],
          "properties": {
            "activated": {
              "type": "boolean"
            },
            "validDid": {
              "type": "boolean"
            },
            "repoCommit": {
              "type": "string",
              "format": "cid"
            },
            "repoRev": {
              "type": "string"
            },
            "repoBlocks": {
              "type": "integer"
            },
            "indexedRecords": {
              "type": "integer"
            },
            "privateStateValues": {
              "type": "integer"
            },
            "expectedBlobs": {
              "type": "integer"
            },
            "importedBlobs": {
              "type": "integer"
            }
          }
        }
      }
    }
  }
}
```
