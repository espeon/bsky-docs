---
title: app.bsky.notification.putActivitySubscription
description: Reference for the app.bsky.notification.putActivitySubscription lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Puts an activity subscription entry. The key should be omitted for creation and provided for updates. Requires auth.

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `subject` | `string` | ✅  |  | Format: `did` |
| `activitySubscription` | [`app.bsky.notification.defs#activitySubscription`](/lexicons/app/bsky/notification/app-bsky-notification-defs#activitysubscription) | ✅  |  |  |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `subject` | `string` | ✅  |  | Format: `did` |
| `activitySubscription` | [`app.bsky.notification.defs#activitySubscription`](/lexicons/app/bsky/notification/app-bsky-notification-defs#activitysubscription) | ❌  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.notification.putActivitySubscription",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Puts an activity subscription entry. The key should be omitted for creation and provided for updates. Requires auth.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "subject",
            "activitySubscription"
          ],
          "properties": {
            "subject": {
              "type": "string",
              "format": "did"
            },
            "activitySubscription": {
              "type": "ref",
              "ref": "app.bsky.notification.defs#activitySubscription"
            }
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "subject"
          ],
          "properties": {
            "subject": {
              "type": "string",
              "format": "did"
            },
            "activitySubscription": {
              "type": "ref",
              "ref": "app.bsky.notification.defs#activitySubscription"
            }
          }
        }
      }
    }
  }
}
```
