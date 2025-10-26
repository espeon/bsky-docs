---
title: tools.ozone.moderation.getRepos
description: Reference for the tools.ozone.moderation.getRepos lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Get details about some repositories.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `dids` | Array of `string` | ✅  |  | Max Items: 100 |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `repos` | Array of Union of:<br/>&nbsp;&nbsp;[`tools.ozone.moderation.defs#repoViewDetail`](/tools/ozone/moderation/defs#repoViewDetail)<br/>&nbsp;&nbsp;[`tools.ozone.moderation.defs#repoViewNotFound`](/tools/ozone/moderation/defs#repoViewNotFound) | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "tools.ozone.moderation.getRepos",
  "defs": {
    "main": {
      "type": "query",
      "description": "Get details about some repositories.",
      "parameters": {
        "type": "params",
        "required": [
          "dids"
        ],
        "properties": {
          "dids": {
            "type": "array",
            "maxLength": 100,
            "items": {
              "type": "string",
              "format": "did"
            }
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
            "repos": {
              "type": "array",
              "items": {
                "type": "union",
                "refs": [
                  "tools.ozone.moderation.defs#repoViewDetail",
                  "tools.ozone.moderation.defs#repoViewNotFound"
                ]
              }
            }
          }
        }
      }
    }
  }
}
```
