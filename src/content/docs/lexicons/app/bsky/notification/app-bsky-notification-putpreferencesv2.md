---
title: app.bsky.notification.putPreferencesV2
description: Reference for the app.bsky.notification.putPreferencesV2 lexicon
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
| `chat` | [`app.bsky.notification.defs#chatPreference`](/lexicons/app/bsky/notification/defs#chatPreference) | ❌  |  |  |
| `follow` | [`app.bsky.notification.defs#filterablePreference`](/lexicons/app/bsky/notification/defs#filterablePreference) | ❌  |  |  |
| `like` | [`app.bsky.notification.defs#filterablePreference`](/lexicons/app/bsky/notification/defs#filterablePreference) | ❌  |  |  |
| `likeViaRepost` | [`app.bsky.notification.defs#filterablePreference`](/lexicons/app/bsky/notification/defs#filterablePreference) | ❌  |  |  |
| `mention` | [`app.bsky.notification.defs#filterablePreference`](/lexicons/app/bsky/notification/defs#filterablePreference) | ❌  |  |  |
| `quote` | [`app.bsky.notification.defs#filterablePreference`](/lexicons/app/bsky/notification/defs#filterablePreference) | ❌  |  |  |
| `reply` | [`app.bsky.notification.defs#filterablePreference`](/lexicons/app/bsky/notification/defs#filterablePreference) | ❌  |  |  |
| `repost` | [`app.bsky.notification.defs#filterablePreference`](/lexicons/app/bsky/notification/defs#filterablePreference) | ❌  |  |  |
| `repostViaRepost` | [`app.bsky.notification.defs#filterablePreference`](/lexicons/app/bsky/notification/defs#filterablePreference) | ❌  |  |  |
| `starterpackJoined` | [`app.bsky.notification.defs#preference`](/lexicons/app/bsky/notification/defs#preference) | ❌  |  |  |
| `subscribedPost` | [`app.bsky.notification.defs#preference`](/lexicons/app/bsky/notification/defs#preference) | ❌  |  |  |
| `unverified` | [`app.bsky.notification.defs#preference`](/lexicons/app/bsky/notification/defs#preference) | ❌  |  |  |
| `verified` | [`app.bsky.notification.defs#preference`](/lexicons/app/bsky/notification/defs#preference) | ❌  |  |  |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `preferences` | [`app.bsky.notification.defs#preferences`](/lexicons/app/bsky/notification/defs#preferences) | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.notification.putPreferencesV2",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Set notification-related preferences for an account. Requires auth.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "properties": {
            "chat": {
              "type": "ref",
              "ref": "app.bsky.notification.defs#chatPreference"
            },
            "follow": {
              "type": "ref",
              "ref": "app.bsky.notification.defs#filterablePreference"
            },
            "like": {
              "type": "ref",
              "ref": "app.bsky.notification.defs#filterablePreference"
            },
            "likeViaRepost": {
              "type": "ref",
              "ref": "app.bsky.notification.defs#filterablePreference"
            },
            "mention": {
              "type": "ref",
              "ref": "app.bsky.notification.defs#filterablePreference"
            },
            "quote": {
              "type": "ref",
              "ref": "app.bsky.notification.defs#filterablePreference"
            },
            "reply": {
              "type": "ref",
              "ref": "app.bsky.notification.defs#filterablePreference"
            },
            "repost": {
              "type": "ref",
              "ref": "app.bsky.notification.defs#filterablePreference"
            },
            "repostViaRepost": {
              "type": "ref",
              "ref": "app.bsky.notification.defs#filterablePreference"
            },
            "starterpackJoined": {
              "type": "ref",
              "ref": "app.bsky.notification.defs#preference"
            },
            "subscribedPost": {
              "type": "ref",
              "ref": "app.bsky.notification.defs#preference"
            },
            "unverified": {
              "type": "ref",
              "ref": "app.bsky.notification.defs#preference"
            },
            "verified": {
              "type": "ref",
              "ref": "app.bsky.notification.defs#preference"
            }
          }
        }
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
