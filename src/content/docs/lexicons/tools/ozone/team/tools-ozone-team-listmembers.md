---
title: tools.ozone.team.listMembers
description: Reference for the tools.ozone.team.listMembers lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

List all members with access to the ozone service.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `q` | `string` | ❌  |  |  |
| `disabled` | `boolean` | ❌  |  |  |
| `roles` | Array of `string` | ❌  |  |  |
| `limit` | `integer` | ❌  |  | Min: 1<br/>Max: 100<br/>Default: `50` |
| `cursor` | `string` | ❌  |  |  |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `cursor` | `string` | ❌  |  |  |
| `members` | Array of [`tools.ozone.team.defs#member`](lexicons/tools/ozone/team/defs#member) | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "tools.ozone.team.listMembers",
  "defs": {
    "main": {
      "type": "query",
      "description": "List all members with access to the ozone service.",
      "parameters": {
        "type": "params",
        "properties": {
          "q": {
            "type": "string"
          },
          "disabled": {
            "type": "boolean"
          },
          "roles": {
            "type": "array",
            "items": {
              "type": "string"
            }
          },
          "limit": {
            "type": "integer",
            "minimum": 1,
            "maximum": 100,
            "default": 50
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
            "members"
          ],
          "properties": {
            "cursor": {
              "type": "string"
            },
            "members": {
              "type": "array",
              "items": {
                "type": "ref",
                "ref": "tools.ozone.team.defs#member"
              }
            }
          }
        }
      }
    }
  }
}
```
