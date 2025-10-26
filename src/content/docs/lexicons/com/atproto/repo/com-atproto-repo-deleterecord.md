---
title: com.atproto.repo.deleteRecord
description: Reference for the com.atproto.repo.deleteRecord lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Delete a repository record, or ensure it doesn't exist. Requires auth, implemented by PDS.

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `repo` | `string` | ✅  | The handle or DID of the repo (aka, current account). | Format: `at-identifier` |
| `collection` | `string` | ✅  | The NSID of the record collection. | Format: `nsid` |
| `rkey` | `string` | ✅  | The Record Key. | Format: `record-key` |
| `swapRecord` | `string` | ❌  | Compare and swap with the previous record by CID. | Format: `cid` |
| `swapCommit` | `string` | ❌  | Compare and swap with the previous commit by CID. | Format: `cid` |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `commit` | [`com.atproto.repo.defs#commitMeta`](/lexicons/com/atproto/repo/com-atproto-repo-defs#commitmeta) | ❌  |  |  |
**Possible Errors:**

- `InvalidSwap`

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.repo.deleteRecord",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Delete a repository record, or ensure it doesn't exist. Requires auth, implemented by PDS.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "repo",
            "collection",
            "rkey"
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
              "description": "The Record Key."
            },
            "swapRecord": {
              "type": "string",
              "format": "cid",
              "description": "Compare and swap with the previous record by CID."
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
          "properties": {
            "commit": {
              "type": "ref",
              "ref": "com.atproto.repo.defs#commitMeta"
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
