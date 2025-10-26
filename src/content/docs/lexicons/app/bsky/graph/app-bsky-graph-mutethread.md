---
title: app.bsky.graph.muteThread
description: Reference for the app.bsky.graph.muteThread lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Mutes a thread preventing notifications from the thread and any of its children. Mutes are private in Bluesky. Requires auth.

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `root` | `string` | ✅  |  | Format: `at-uri` |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.graph.muteThread",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Mutes a thread preventing notifications from the thread and any of its children. Mutes are private in Bluesky. Requires auth.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "root"
          ],
          "properties": {
            "root": {
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
