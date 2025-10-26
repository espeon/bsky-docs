---
title: com.atproto.sync.listRepos
description: Reference for the com.atproto.sync.listRepos lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Enumerates all the DID, rev, and commit CID for all repos hosted by this service. Does not require auth; implemented by PDS and Relay.

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
| `repos` | Array of [`#repo`](#repo) | ✅  |  |  |

---

<a name="repo"></a>
### `repo`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `did` | `string` | ✅  |  | Format: `did` |
| `head` | `string` | ✅  | Current repo commit CID | Format: `cid` |
| `rev` | `string` | ✅  |  | Format: `tid` |
| `active` | `boolean` | ❌  |  |  |
| `status` | `string` | ❌  | If active=false, this optional field indicates a possible reason for why the account is not active. If active=false and no status is supplied, then the host makes no claim for why the repository is no longer being hosted. | Known Values: `takendown`, `suspended`, `deleted`, `deactivated`, `desynchronized`, `throttled` |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.sync.listRepos",
  "defs": {
    "main": {
      "type": "query",
      "description": "Enumerates all the DID, rev, and commit CID for all repos hosted by this service. Does not require auth; implemented by PDS and Relay.",
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
            "repos"
          ],
          "properties": {
            "cursor": {
              "type": "string"
            },
            "repos": {
              "type": "array",
              "items": {
                "type": "ref",
                "ref": "#repo"
              }
            }
          }
        }
      }
    },
    "repo": {
      "type": "object",
      "required": [
        "did",
        "head",
        "rev"
      ],
      "properties": {
        "did": {
          "type": "string",
          "format": "did"
        },
        "head": {
          "type": "string",
          "format": "cid",
          "description": "Current repo commit CID"
        },
        "rev": {
          "type": "string",
          "format": "tid"
        },
        "active": {
          "type": "boolean"
        },
        "status": {
          "type": "string",
          "description": "If active=false, this optional field indicates a possible reason for why the account is not active. If active=false and no status is supplied, then the host makes no claim for why the repository is no longer being hosted.",
          "knownValues": [
            "takendown",
            "suspended",
            "deleted",
            "deactivated",
            "desynchronized",
            "throttled"
          ]
        }
      }
    }
  }
}
```
