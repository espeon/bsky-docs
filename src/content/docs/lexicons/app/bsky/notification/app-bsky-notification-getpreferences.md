---
title: app.bsky.notification.getPreferences
description: Reference for the app.bsky.notification.getPreferences lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Get notification-related preferences for an account. Requires auth.

**Parameters:** _(None defined)_

**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `preferences` | [`app.bsky.notification.defs#preferences`](/lexicons/app/bsky/notification/app-bsky-notification-defs#preferences) | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.notification.getPreferences",
  "defs": {
    "main": {
      "type": "query",
      "description": "Get notification-related preferences for an account. Requires auth.",
      "parameters": {
        "type": "params",
        "properties": {}
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "preferences"
          ],
          "properties": {
            "preferences": {
              "type": "ref",
              "ref": "app.bsky.notification.defs#preferences"
            }
          }
        }
      }
    }
  }
}
```
