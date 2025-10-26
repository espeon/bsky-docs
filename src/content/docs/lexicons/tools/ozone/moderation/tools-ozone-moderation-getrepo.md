---
title: tools.ozone.moderation.getRepo
description: Reference for the tools.ozone.moderation.getRepo lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Get details about a repository.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `did` | `string` | ✅  |  | Format: `did` |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** [`tools.ozone.moderation.defs#repoViewDetail`](lexicons/tools/ozone/moderation/defs#repoViewDetail)


**Possible Errors:**

- `RepoNotFound`

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "tools.ozone.moderation.getRepo",
  "defs": {
    "main": {
      "type": "query",
      "description": "Get details about a repository.",
      "parameters": {
        "type": "params",
        "required": [
          "did"
        ],
        "properties": {
          "did": {
            "type": "string",
            "format": "did"
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "ref",
          "ref": "tools.ozone.moderation.defs#repoViewDetail"
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
