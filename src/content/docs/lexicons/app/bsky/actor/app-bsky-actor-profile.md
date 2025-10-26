---
title: app.bsky.actor.profile
description: Reference for the app.bsky.actor.profile lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `record`

A declaration of a Bluesky account profile.

**Record Key:** `literal:self`

**Record Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `displayName` | `string` | ❌  |  | Max Length: 640<br/>Max Graphemes: 64 |
| `description` | `string` | ❌  | Free-form profile description text. | Max Length: 2560<br/>Max Graphemes: 256 |
| `pronouns` | `string` | ❌  | Free-form pronouns text. | Max Length: 200<br/>Max Graphemes: 20 |
| `website` | `string` | ❌  |  | Format: `uri` |
| `avatar` | `blob` | ❌  | Small image to be displayed next to posts from account. AKA, 'profile picture' | Accept: `image/png`, `image/jpeg`<br/>Max Size: 1000000 bytes |
| `banner` | `blob` | ❌  | Larger horizontal image to display behind profile view. | Accept: `image/png`, `image/jpeg`<br/>Max Size: 1000000 bytes |
| `labels` | Union of:<br/>&nbsp;&nbsp;[`com.atproto.label.defs#selfLabels`](lexicons/com/atproto/label/defs#selfLabels) | ❌  | Self-label values, specific to the Bluesky application, on the overall account. |  |
| `joinedViaStarterPack` | [`com.atproto.repo.strongRef`](lexicons/com/atproto/repo/strongref#undefined) | ❌  |  |  |
| `pinnedPost` | [`com.atproto.repo.strongRef`](lexicons/com/atproto/repo/strongref#undefined) | ❌  |  |  |
| `createdAt` | `string` | ❌  |  | Format: `datetime` |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.actor.profile",
  "defs": {
    "main": {
      "type": "record",
      "description": "A declaration of a Bluesky account profile.",
      "key": "literal:self",
      "record": {
        "type": "object",
        "properties": {
          "displayName": {
            "type": "string",
            "maxGraphemes": 64,
            "maxLength": 640
          },
          "description": {
            "type": "string",
            "description": "Free-form profile description text.",
            "maxGraphemes": 256,
            "maxLength": 2560
          },
          "pronouns": {
            "type": "string",
            "description": "Free-form pronouns text.",
            "maxGraphemes": 20,
            "maxLength": 200
          },
          "website": {
            "type": "string",
            "format": "uri"
          },
          "avatar": {
            "type": "blob",
            "description": "Small image to be displayed next to posts from account. AKA, 'profile picture'",
            "accept": [
              "image/png",
              "image/jpeg"
            ],
            "maxSize": 1000000
          },
          "banner": {
            "type": "blob",
            "description": "Larger horizontal image to display behind profile view.",
            "accept": [
              "image/png",
              "image/jpeg"
            ],
            "maxSize": 1000000
          },
          "labels": {
            "type": "union",
            "description": "Self-label values, specific to the Bluesky application, on the overall account.",
            "refs": [
              "com.atproto.label.defs#selfLabels"
            ]
          },
          "joinedViaStarterPack": {
            "type": "ref",
            "ref": "com.atproto.repo.strongRef"
          },
          "pinnedPost": {
            "type": "ref",
            "ref": "com.atproto.repo.strongRef"
          },
          "createdAt": {
            "type": "string",
            "format": "datetime"
          }
        }
      }
    }
  }
}
```
