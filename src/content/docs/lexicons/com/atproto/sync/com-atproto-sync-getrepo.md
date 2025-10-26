---
title: com.atproto.sync.getRepo
description: Reference for the com.atproto.sync.getRepo lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Download a repository export as CAR file. Optionally only a 'diff' since a previous revision. Does not require auth; implemented by PDS.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `did` | `string` | ✅  | The DID of the repo. | Format: `did` |
| `since` | `string` | ❌  | The revision ('rev') of the repo to create a diff from. | Format: `tid` |
**Output:**

- **Encoding:** `application/vnd.ipld.car`
- **Schema:**

_Schema not defined._
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
  "id": "com.atproto.sync.getRepo",
  "defs": {
    "main": {
      "type": "query",
      "description": "Download a repository export as CAR file. Optionally only a 'diff' since a previous revision. Does not require auth; implemented by PDS.",
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
            "description": "The revision ('rev') of the repo to create a diff from."
          }
        }
      },
      "output": {
        "encoding": "application/vnd.ipld.car"
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
