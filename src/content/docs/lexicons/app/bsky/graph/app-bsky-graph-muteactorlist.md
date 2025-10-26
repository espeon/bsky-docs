---
title: app.bsky.graph.muteActorList
description: Reference for the app.bsky.graph.muteActorList lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Creates a mute relationship for the specified list of accounts. Mutes are private in Bluesky. Requires auth.

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `list` | `string` | ✅  |  | Format: `at-uri` |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.graph.muteActorList",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Creates a mute relationship for the specified list of accounts. Mutes are private in Bluesky. Requires auth.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "list"
          ],
          "properties": {
            "list": {
              "type": "string",
              "format": "at-uri"
            }
          }
        }
      }
    }
  }
}
```
