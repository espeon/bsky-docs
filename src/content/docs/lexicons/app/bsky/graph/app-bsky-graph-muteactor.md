---
title: app.bsky.graph.muteActor
description: Reference for the app.bsky.graph.muteActor lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Creates a mute relationship for the specified account. Mutes are private in Bluesky. Requires auth.

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `actor` | `string` | ✅  |  | Format: `at-identifier` |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.graph.muteActor",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Creates a mute relationship for the specified account. Mutes are private in Bluesky. Requires auth.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "actor"
          ],
          "properties": {
            "actor": {
              "type": "string",
              "format": "at-identifier"
            }
          }
        }
      }
    }
  }
}
```
