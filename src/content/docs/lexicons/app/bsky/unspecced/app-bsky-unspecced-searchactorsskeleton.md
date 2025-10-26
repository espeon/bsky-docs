---
title: app.bsky.unspecced.searchActorsSkeleton
description: Reference for the app.bsky.unspecced.searchActorsSkeleton lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Backend Actors (profile) search, returns only skeleton.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `q` | `string` | ✅  | Search query string; syntax, phrase, boolean, and faceting is unspecified, but Lucene query syntax is recommended. For typeahead search, only simple term match is supported, not full syntax. |  |
| `viewer` | `string` | ❌  | DID of the account making the request (not included for public/unauthenticated queries). Used to boost followed accounts in ranking. | Format: `did` |
| `typeahead` | `boolean` | ❌  | If true, acts as fast/simple 'typeahead' query. |  |
| `limit` | `integer` | ❌  |  | Min: 1<br/>Max: 100<br/>Default: `25` |
| `cursor` | `string` | ❌  | Optional pagination mechanism; may not necessarily allow scrolling through entire result set. |  |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `cursor` | `string` | ❌  |  |  |
| `hitsTotal` | `integer` | ❌  | Count of search hits. Optional, may be rounded/truncated, and may not be possible to paginate through all hits. |  |
| `actors` | Array of [`app.bsky.unspecced.defs#skeletonSearchActor`](lexicons/app/bsky/unspecced/defs#skeletonSearchActor) | ✅  |  |  |
**Possible Errors:**

- `BadQueryString`

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.unspecced.searchActorsSkeleton",
  "defs": {
    "main": {
      "type": "query",
      "description": "Backend Actors (profile) search, returns only skeleton.",
      "parameters": {
        "type": "params",
        "required": [
          "q"
        ],
        "properties": {
          "q": {
            "type": "string",
            "description": "Search query string; syntax, phrase, boolean, and faceting is unspecified, but Lucene query syntax is recommended. For typeahead search, only simple term match is supported, not full syntax."
          },
          "viewer": {
            "type": "string",
            "format": "did",
            "description": "DID of the account making the request (not included for public/unauthenticated queries). Used to boost followed accounts in ranking."
          },
          "typeahead": {
            "type": "boolean",
            "description": "If true, acts as fast/simple 'typeahead' query."
          },
          "limit": {
            "type": "integer",
            "minimum": 1,
            "maximum": 100,
            "default": 25
          },
          "cursor": {
            "type": "string",
            "description": "Optional pagination mechanism; may not necessarily allow scrolling through entire result set."
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "actors"
          ],
          "properties": {
            "cursor": {
              "type": "string"
            },
            "hitsTotal": {
              "type": "integer",
              "description": "Count of search hits. Optional, may be rounded/truncated, and may not be possible to paginate through all hits."
            },
            "actors": {
              "type": "array",
              "items": {
                "type": "ref",
                "ref": "app.bsky.unspecced.defs#skeletonSearchActor"
              }
            }
          }
        }
      },
      "errors": [
        {
          "name": "BadQueryString"
        }
      ]
    }
  }
}
```
