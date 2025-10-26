---
title: com.atproto.sync.getLatestCommit
description: Reference for the com.atproto.sync.getLatestCommit lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Get the current commit CID & revision of the specified repo. Does not require auth.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `did` | `string` | ✅  | The DID of the repo. | Format: `did` |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `cid` | `string` | ✅  |  | Format: `cid` |
| `rev` | `string` | ✅  |  | Format: `tid` |
**Possible Errors:**

- `RepoNotFound`
- `RepoTakendown`
- `RepoSuspended`
- `RepoDeactivated`

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.sync.getLatestCommit",
  "defs": {
    "main": {
      "type": "query",
      "description": "Get the current commit CID & revision of the specified repo. Does not require auth.",
      "parameters": {
        "type": "params",
        "required": [
          "did"
        ],
        "properties": {
          "did": {
            "type": "string",
            "format": "did",
            "description": "The DID of the repo."
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "cid",
            "rev"
          ],
          "properties": {
            "cid": {
              "type": "string",
              "format": "cid"
            },
            "rev": {
              "type": "string",
              "format": "tid"
            }
          }
        }
      },
      "errors": [
        {
          "name": "RepoNotFound"
        },
        {
          "name": "RepoTakendown"
        },
        {
          "name": "RepoSuspended"
        },
        {
          "name": "RepoDeactivated"
        }
      ]
    }
  }
}
```
