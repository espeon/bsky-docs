---
title: com.atproto.sync.listReposByCollection
description: Reference for the com.atproto.sync.listReposByCollection lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Enumerates all the DIDs which have records with the given collection NSID.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `collection` | `string` | ✅  |  | Format: `nsid` |
| `limit` | `integer` | ❌  | Maximum size of response set. Recommend setting a large maximum (1000+) when enumerating large DID lists. | Min: 1<br/>Max: 2000<br/>Default: `500` |
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

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.sync.listReposByCollection",
  "defs": {
    "main": {
      "type": "query",
      "description": "Enumerates all the DIDs which have records with the given collection NSID.",
      "parameters": {
        "type": "params",
        "required": [
          "collection"
        ],
        "properties": {
          "collection": {
            "type": "string",
            "format": "nsid"
          },
          "limit": {
            "type": "integer",
            "description": "Maximum size of response set. Recommend setting a large maximum (1000+) when enumerating large DID lists.",
            "minimum": 1,
            "maximum": 2000,
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
        "did"
      ],
      "properties": {
        "did": {
          "type": "string",
          "format": "did"
        }
      }
    }
  }
}
```
