---
title: com.atproto.sync.getRepoStatus
description: Reference for the com.atproto.sync.getRepoStatus lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Get the hosting status for a repository, on this server. Expected to be implemented by PDS and Relay.

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
| `did` | `string` | ✅  |  | Format: `did` |
| `active` | `boolean` | ✅  |  |  |
| `status` | `string` | ❌  | If active=false, this optional field indicates a possible reason for why the account is not active. If active=false and no status is supplied, then the host makes no claim for why the repository is no longer being hosted. | Known Values: `takendown`, `suspended`, `deleted`, `deactivated`, `desynchronized`, `throttled` |
| `rev` | `string` | ❌  | Optional field, the current rev of the repo, if active=true | Format: `tid` |
**Possible Errors:**

- `RepoNotFound`

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.sync.getRepoStatus",
  "defs": {
    "main": {
      "type": "query",
      "description": "Get the hosting status for a repository, on this server. Expected to be implemented by PDS and Relay.",
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
            "did",
            "active"
          ],
          "properties": {
            "did": {
              "type": "string",
              "format": "did"
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
            },
            "rev": {
              "type": "string",
              "format": "tid",
              "description": "Optional field, the current rev of the repo, if active=true"
            }
          }
        }
      },
      "errors": [
        {
          "name": "RepoNotFound"
        }
      ]
    }
  }
}
```
