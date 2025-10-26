---
title: app.bsky.actor.getProfiles
description: Reference for the app.bsky.actor.getProfiles lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Get detailed profile views of multiple actors.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `actors` | Array of `string` | ✅  |  | Max Items: 25 |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `profiles` | Array of [`app.bsky.actor.defs#profileViewDetailed`](/app/bsky/actor/defs#profileViewDetailed) | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.actor.getProfiles",
  "defs": {
    "main": {
      "type": "query",
      "description": "Get detailed profile views of multiple actors.",
      "parameters": {
        "type": "params",
        "required": [
          "actors"
        ],
        "properties": {
          "actors": {
            "type": "array",
            "items": {
              "type": "string",
              "format": "at-identifier"
            },
            "maxLength": 25
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "profiles"
          ],
          "properties": {
            "profiles": {
              "type": "array",
              "items": {
                "type": "ref",
                "ref": "app.bsky.actor.defs#profileViewDetailed"
              }
            }
          }
        }
      }
    }
  }
}
```
