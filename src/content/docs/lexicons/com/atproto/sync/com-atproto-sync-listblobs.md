---
title: com.atproto.sync.listBlobs
description: Reference for the com.atproto.sync.listBlobs lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

List blob CIDs for an account, since some repo revision. Does not require auth; implemented by PDS.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `did` | `string` | ✅  | The DID of the repo. | Format: `did` |
| `since` | `string` | ❌  | Optional revision of the repo to list blobs since. | Format: `tid` |
| `limit` | `integer` | ❌  |  | Min: 1<br/>Max: 1000<br/>Default: `500` |
| `cursor` | `string` | ❌  |  |  |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `cursor` | `string` | ❌  |  |  |
| `cids` | Array of `string` | ✅  |  |  |
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
  "id": "com.atproto.sync.listBlobs",
  "defs": {
    "main": {
      "type": "query",
      "description": "List blob CIDs for an account, since some repo revision. Does not require auth; implemented by PDS.",
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
          },
          "since": {
            "type": "string",
            "format": "tid",
            "description": "Optional revision of the repo to list blobs since."
          },
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
            "cids"
          ],
          "properties": {
            "cursor": {
              "type": "string"
            },
            "cids": {
              "type": "array",
              "items": {
                "type": "string",
                "format": "cid"
              }
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
