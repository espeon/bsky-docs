---
title: com.atproto.repo.putRecord
description: Reference for the com.atproto.repo.putRecord lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Write a repository record, creating or updating it as needed. Requires auth, implemented by PDS.

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd | Nullable | Description | Constraints |
|------|------|----------|--|-------------|-------------|
| `repo` | `string` | ✅ | n/a | The handle or DID of the repo (aka, current account). | Format: `at-identifier` |
| `collection` | `string` | ✅ | n/a | The NSID of the record collection. | Format: `nsid` |
| `rkey` | `string` | ✅ | n/a | The Record Key. | Format: `record-key`<br/>Max Length: 512 |
| `validate` | `boolean` | ❌ | n/a | Can be set to 'false' to skip Lexicon schema validation of record data, 'true' to require it, or leave unset to validate only for known Lexicons. |  |
| `record` | `unknown` | ✅ | n/a | The record to write. |  |
| `swapRecord` | `string` | ❌ | ✅ | Compare and swap with the previous record by CID. WARNING: nullable and optional field; may cause problems with golang implementation | Format: `cid` |
| `swapCommit` | `string` | ❌ | n/a | Compare and swap with the previous commit by CID. | Format: `cid` |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `uri` | `string` | ✅  |  | Format: `at-uri` |
| `cid` | `string` | ✅  |  | Format: `cid` |
| `commit` | [`com.atproto.repo.defs#commitMeta`](/lexicons/com/atproto/repo/defs#commitMeta) | ❌  |  |  |
| `validationStatus` | `string` | ❌  |  | Known Values: `valid`, `unknown` |
**Possible Errors:**

- `InvalidSwap`

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.repo.putRecord",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Write a repository record, creating or updating it as needed. Requires auth, implemented by PDS.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "repo",
            "collection",
            "rkey",
            "record"
          ],
          "nullable": [
            "swapRecord"
          ],
          "properties": {
            "repo": {
              "type": "string",
              "format": "at-identifier",
              "description": "The handle or DID of the repo (aka, current account)."
            },
            "collection": {
              "type": "string",
              "format": "nsid",
              "description": "The NSID of the record collection."
            },
            "rkey": {
              "type": "string",
              "format": "record-key",
              "description": "The Record Key.",
              "maxLength": 512
            },
            "validate": {
              "type": "boolean",
              "description": "Can be set to 'false' to skip Lexicon schema validation of record data, 'true' to require it, or leave unset to validate only for known Lexicons."
            },
            "record": {
              "type": "unknown",
              "description": "The record to write."
            },
            "swapRecord": {
              "type": "string",
              "format": "cid",
              "description": "Compare and swap with the previous record by CID. WARNING: nullable and optional field; may cause problems with golang implementation"
            },
            "swapCommit": {
              "type": "string",
              "format": "cid",
              "description": "Compare and swap with the previous commit by CID."
            }
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "uri",
            "cid"
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
            "commit": {
              "type": "ref",
              "ref": "com.atproto.repo.defs#commitMeta"
            },
            "validationStatus": {
              "type": "string",
              "knownValues": [
                "valid",
                "unknown"
              ]
            }
          }
        }
      },
      "errors": [
        {
          "name": "InvalidSwap"
        }
      ]
    }
  }
}
```
