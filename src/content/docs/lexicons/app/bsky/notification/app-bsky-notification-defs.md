---
title: app.bsky.notification.defs
description: Reference for the app.bsky.notification.defs lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="recorddeleted"></a>
### `recordDeleted`

**Type:** `object`

**Properties:**

_(No properties defined)_

---

<a name="chatpreference"></a>
### `chatPreference`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `include` | `string` | ✅  |  | Known Values: `all`, `accepted` |
| `push` | `boolean` | ✅  |  |  |

---

<a name="filterablepreference"></a>
### `filterablePreference`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `include` | `string` | ✅  |  | Known Values: `all`, `follows` |
| `list` | `boolean` | ✅  |  |  |
| `push` | `boolean` | ✅  |  |  |

---

<a name="preference"></a>
### `preference`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `list` | `boolean` | ✅  |  |  |
| `push` | `boolean` | ✅  |  |  |

---

<a name="preferences"></a>
### `preferences`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `chat` | [`#chatPreference`](#chatpreference) | ✅  |  |  |
| `follow` | [`#filterablePreference`](#filterablepreference) | ✅  |  |  |
| `like` | [`#filterablePreference`](#filterablepreference) | ✅  |  |  |
| `likeViaRepost` | [`#filterablePreference`](#filterablepreference) | ✅  |  |  |
| `mention` | [`#filterablePreference`](#filterablepreference) | ✅  |  |  |
| `quote` | [`#filterablePreference`](#filterablepreference) | ✅  |  |  |
| `reply` | [`#filterablePreference`](#filterablepreference) | ✅  |  |  |
| `repost` | [`#filterablePreference`](#filterablepreference) | ✅  |  |  |
| `repostViaRepost` | [`#filterablePreference`](#filterablepreference) | ✅  |  |  |
| `starterpackJoined` | [`#preference`](#preference) | ✅  |  |  |
| `subscribedPost` | [`#preference`](#preference) | ✅  |  |  |
| `unverified` | [`#preference`](#preference) | ✅  |  |  |
| `verified` | [`#preference`](#preference) | ✅  |  |  |

---

<a name="activitysubscription"></a>
### `activitySubscription`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `post` | `boolean` | ✅  |  |  |
| `reply` | `boolean` | ✅  |  |  |

---

<a name="subjectactivitysubscription"></a>
### `subjectActivitySubscription`

**Type:** `object`

Object used to store activity subscription data in stash.

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `subject` | `string` | ✅  |  | Format: `did` |
| `activitySubscription` | [`#activitySubscription`](#activitysubscription) | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.notification.defs",
  "defs": {
    "recordDeleted": {
      "type": "object",
      "properties": {}
    },
    "chatPreference": {
      "type": "object",
      "required": [
        "include",
        "push"
      ],
      "properties": {
        "include": {
          "type": "string",
          "knownValues": [
            "all",
            "accepted"
          ]
        },
        "push": {
          "type": "boolean"
        }
      }
    },
    "filterablePreference": {
      "type": "object",
      "required": [
        "include",
        "list",
        "push"
      ],
      "properties": {
        "include": {
          "type": "string",
          "knownValues": [
            "all",
            "follows"
          ]
        },
        "list": {
          "type": "boolean"
        },
        "push": {
          "type": "boolean"
        }
      }
    },
    "preference": {
      "type": "object",
      "required": [
        "list",
        "push"
      ],
      "properties": {
        "list": {
          "type": "boolean"
        },
        "push": {
          "type": "boolean"
        }
      }
    },
    "preferences": {
      "type": "object",
      "required": [
        "chat",
        "follow",
        "like",
        "likeViaRepost",
        "mention",
        "quote",
        "reply",
        "repost",
        "repostViaRepost",
        "starterpackJoined",
        "subscribedPost",
        "unverified",
        "verified"
      ],
      "properties": {
        "chat": {
          "type": "ref",
          "ref": "#chatPreference"
        },
        "follow": {
          "type": "ref",
          "ref": "#filterablePreference"
        },
        "like": {
          "type": "ref",
          "ref": "#filterablePreference"
        },
        "likeViaRepost": {
          "type": "ref",
          "ref": "#filterablePreference"
        },
        "mention": {
          "type": "ref",
          "ref": "#filterablePreference"
        },
        "quote": {
          "type": "ref",
          "ref": "#filterablePreference"
        },
        "reply": {
          "type": "ref",
          "ref": "#filterablePreference"
        },
        "repost": {
          "type": "ref",
          "ref": "#filterablePreference"
        },
        "repostViaRepost": {
          "type": "ref",
          "ref": "#filterablePreference"
        },
        "starterpackJoined": {
          "type": "ref",
          "ref": "#preference"
        },
        "subscribedPost": {
          "type": "ref",
          "ref": "#preference"
        },
        "unverified": {
          "type": "ref",
          "ref": "#preference"
        },
        "verified": {
          "type": "ref",
          "ref": "#preference"
        }
      }
    },
    "activitySubscription": {
      "type": "object",
      "required": [
        "post",
        "reply"
      ],
      "properties": {
        "post": {
          "type": "boolean"
        },
        "reply": {
          "type": "boolean"
        }
      }
    },
    "subjectActivitySubscription": {
      "description": "Object used to store activity subscription data in stash.",
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
          "ref": "#activitySubscription"
        }
      }
    }
  }
}
```
