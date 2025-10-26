---
title: com.atproto.repo.createRecord
description: Reference for the com.atproto.repo.createRecord lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Create a single new repository record. Requires auth, implemented by PDS.

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `repo` | `string` | ✅  | The handle or DID of the repo (aka, current account). | Format: `at-identifier` |
| `collection` | `string` | ✅  | The NSID of the record collection. | Format: `nsid` |
| `rkey` | `string` | ❌  | The Record Key. | Format: `record-key`<br/>Max Length: 512 |
| `validate` | `boolean` | ❌  | Can be set to 'false' to skip Lexicon schema validation of record data, 'true' to require it, or leave unset to validate only for known Lexicons. |  |
| `record` | `unknown` | ✅  | The record itself. Must contain a $type field. |  |
| `swapCommit` | `string` | ❌  | Compare and swap with the previous commit by CID. | Format: `cid` |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `uri` | `string` | ✅  |  | Format: `at-uri` |
| `cid` | `string` | ✅  |  | Format: `cid` |
| `commit` | [`com.atproto.repo.defs#commitMeta`](lexicons/com/atproto/repo/defs#commitMeta) | ❌  |  |  |
| `validationStatus` | `string` | ❌  |  | Known Values: `valid`, `unknown` |
**Possible Errors:**

- `InvalidSwap`: Indicates that 'swapCommit' didn't match current repo commit.

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.repo.createRecord",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Create a single new repository record. Requires auth, implemented by PDS.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "repo",
            "collection",
            "record"
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
              "description": "The record itself. Must contain a $type field."
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
          "name": "InvalidSwap",
          "description": "Indicates that 'swapCommit' didn't match current repo commit."
        }
      ]
    }
  }
}
```
