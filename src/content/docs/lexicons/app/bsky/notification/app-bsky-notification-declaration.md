---
title: app.bsky.notification.declaration
description: Reference for the app.bsky.notification.declaration lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `record`

A declaration of the user's choices related to notifications that can be produced by them.

**Record Key:** `literal:self`

**Record Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `allowSubscriptions` | `string` | ✅  | A declaration of the user's preference for allowing activity subscriptions from other users. Absence of a record implies 'followers'. | Known Values: `followers`, `mutuals`, `none` |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.notification.declaration",
  "defs": {
    "main": {
      "type": "record",
      "description": "A declaration of the user's choices related to notifications that can be produced by them.",
      "key": "literal:self",
      "record": {
        "type": "object",
        "required": [
          "allowSubscriptions"
        ],
        "properties": {
          "allowSubscriptions": {
            "type": "string",
            "description": "A declaration of the user's preference for allowing activity subscriptions from other users. Absence of a record implies 'followers'.",
            "knownValues": [
              "followers",
              "mutuals",
              "none"
            ]
          }
        }
      }
    }
  }
}
```
