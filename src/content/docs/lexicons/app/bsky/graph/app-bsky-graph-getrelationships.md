---
title: app.bsky.graph.getRelationships
description: Reference for the app.bsky.graph.getRelationships lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Enumerates public relationships between one account, and a list of other accounts. Does not require auth.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `actor` | `string` | ✅  | Primary account requesting relationships for. | Format: `at-identifier` |
| `others` | Array of `string` | ❌  | List of 'other' accounts to be related back to the primary. | Max Items: 30 |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `actor` | `string` | ❌  |  | Format: `did` |
| `relationships` | Array of Union of:<br/>&nbsp;&nbsp;[`app.bsky.graph.defs#relationship`](/lexicons/app/bsky/graph/app-bsky-graph-defs#relationship)<br/>&nbsp;&nbsp;[`app.bsky.graph.defs#notFoundActor`](/lexicons/app/bsky/graph/app-bsky-graph-defs#notfoundactor) | ✅  |  |  |
**Possible Errors:**

- `ActorNotFound`: the primary actor at-identifier could not be resolved

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.graph.getRelationships",
  "defs": {
    "main": {
      "type": "query",
      "description": "Enumerates public relationships between one account, and a list of other accounts. Does not require auth.",
      "parameters": {
        "type": "params",
        "required": [
          "actor"
        ],
        "properties": {
          "actor": {
            "type": "string",
            "format": "at-identifier",
            "description": "Primary account requesting relationships for."
          },
          "others": {
            "type": "array",
            "description": "List of 'other' accounts to be related back to the primary.",
            "maxLength": 30,
            "items": {
              "type": "string",
              "format": "at-identifier"
            }
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "relationships"
          ],
          "properties": {
            "actor": {
              "type": "string",
              "format": "did"
            },
            "relationships": {
              "type": "array",
              "items": {
                "type": "union",
                "refs": [
                  "app.bsky.graph.defs#relationship",
                  "app.bsky.graph.defs#notFoundActor"
                ]
              }
            }
          }
        }
      },
      "errors": [
        {
          "name": "ActorNotFound",
          "description": "the primary actor at-identifier could not be resolved"
        }
      ]
    }
  }
}
```
