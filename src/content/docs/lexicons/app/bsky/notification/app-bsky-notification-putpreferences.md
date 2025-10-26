---
title: app.bsky.notification.putPreferences
description: Reference for the app.bsky.notification.putPreferences lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Set notification-related preferences for an account. Requires auth.

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `priority` | `boolean` | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.notification.putPreferences",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Set notification-related preferences for an account. Requires auth.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "priority"
          ],
          "properties": {
            "priority": {
              "type": "boolean"
            }
          }
        }
      }
    }
  }
}
```
