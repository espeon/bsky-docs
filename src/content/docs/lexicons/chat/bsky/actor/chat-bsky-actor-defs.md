---
title: chat.bsky.actor.defs
description: Reference for the chat.bsky.actor.defs lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="profileviewbasic"></a>
### `profileViewBasic`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `did` | `string` | ✅  |  | Format: `did` |
| `handle` | `string` | ✅  |  | Format: `handle` |
| `displayName` | `string` | ❌  |  | Max Length: 640<br/>Max Graphemes: 64 |
| `avatar` | `string` | ❌  |  | Format: `uri` |
| `associated` | [`app.bsky.actor.defs#profileAssociated`](/lexicons/app/bsky/actor/defs#profileAssociated) | ❌  |  |  |
| `viewer` | [`app.bsky.actor.defs#viewerState`](/lexicons/app/bsky/actor/defs#viewerState) | ❌  |  |  |
| `labels` | Array of [`com.atproto.label.defs#label`](/lexicons/com/atproto/label/defs#label) | ❌  |  |  |
| `chatDisabled` | `boolean` | ❌  | Set to true when the actor cannot actively participate in conversations |  |
| `verification` | [`app.bsky.actor.defs#verificationState`](/lexicons/app/bsky/actor/defs#verificationState) | ❌  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "chat.bsky.actor.defs",
  "defs": {
    "profileViewBasic": {
      "type": "object",
      "required": [
        "did",
        "handle"
      ],
      "properties": {
        "did": {
          "type": "string",
          "format": "did"
        },
        "handle": {
          "type": "string",
          "format": "handle"
        },
        "displayName": {
          "type": "string",
          "maxGraphemes": 64,
          "maxLength": 640
        },
        "avatar": {
          "type": "string",
          "format": "uri"
        },
        "associated": {
          "type": "ref",
          "ref": "app.bsky.actor.defs#profileAssociated"
        },
        "viewer": {
          "type": "ref",
          "ref": "app.bsky.actor.defs#viewerState"
        },
        "labels": {
          "type": "array",
          "items": {
            "type": "ref",
            "ref": "com.atproto.label.defs#label"
          }
        },
        "chatDisabled": {
          "type": "boolean",
          "description": "Set to true when the actor cannot actively participate in conversations"
        },
        "verification": {
          "type": "ref",
          "ref": "app.bsky.actor.defs#verificationState"
        }
      }
    }
  }
}
```
