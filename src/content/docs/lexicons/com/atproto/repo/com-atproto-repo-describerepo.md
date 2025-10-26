---
title: com.atproto.repo.describeRepo
description: Reference for the com.atproto.repo.describeRepo lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Get information about an account and repository, including the list of collections. Does not require auth.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `repo` | `string` | ✅  | The handle or DID of the repo. | Format: `at-identifier` |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `handle` | `string` | ✅  |  | Format: `handle` |
| `did` | `string` | ✅  |  | Format: `did` |
| `didDoc` | `unknown` | ✅  | The complete DID document for this account. |  |
| `collections` | Array of `string` | ✅  | List of all the collections (NSIDs) for which this repo contains at least one record. |  |
| `handleIsCorrect` | `boolean` | ✅  | Indicates if handle is currently valid (resolves bi-directionally) |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.repo.describeRepo",
  "defs": {
    "main": {
      "type": "query",
      "description": "Get information about an account and repository, including the list of collections. Does not require auth.",
      "parameters": {
        "type": "params",
        "required": [
          "repo"
        ],
        "properties": {
          "repo": {
            "type": "string",
            "format": "at-identifier",
            "description": "The handle or DID of the repo."
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "handle",
            "did",
            "didDoc",
            "collections",
            "handleIsCorrect"
          ],
          "properties": {
            "handle": {
              "type": "string",
              "format": "handle"
            },
            "did": {
              "type": "string",
              "format": "did"
            },
            "didDoc": {
              "type": "unknown",
              "description": "The complete DID document for this account."
            },
            "collections": {
              "type": "array",
              "description": "List of all the collections (NSIDs) for which this repo contains at least one record.",
              "items": {
                "type": "string",
                "format": "nsid"
              }
            },
            "handleIsCorrect": {
              "type": "boolean",
              "description": "Indicates if handle is currently valid (resolves bi-directionally)"
            }
          }
        }
      }
    }
  }
}
```
