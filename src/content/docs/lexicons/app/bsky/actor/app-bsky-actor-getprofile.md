---
title: app.bsky.actor.getProfile
description: Reference for the app.bsky.actor.getProfile lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Get detailed profile view of an actor. Does not require auth, but contains relevant metadata with auth.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `actor` | `string` | ✅  | Handle or DID of account to fetch profile of. | Format: `at-identifier` |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** [`app.bsky.actor.defs#profileViewDetailed`](/lexicons/app/bsky/actor/app-bsky-actor-defs#profileviewdetailed)



---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.actor.getProfile",
  "defs": {
    "main": {
      "type": "query",
      "description": "Get detailed profile view of an actor. Does not require auth, but contains relevant metadata with auth.",
      "parameters": {
        "type": "params",
        "required": [
          "actor"
        ],
        "properties": {
          "actor": {
            "type": "string",
            "format": "at-identifier",
            "description": "Handle or DID of account to fetch profile of."
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "ref",
          "ref": "app.bsky.actor.defs#profileViewDetailed"
        }
      }
    }
  }
}
```
