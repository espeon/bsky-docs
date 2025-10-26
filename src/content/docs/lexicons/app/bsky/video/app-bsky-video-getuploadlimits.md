---
title: app.bsky.video.getUploadLimits
description: Reference for the app.bsky.video.getUploadLimits lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Get video upload limits for the authenticated user.

**Parameters:** _(None defined)_

**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `canUpload` | `boolean` | ✅  |  |  |
| `remainingDailyVideos` | `integer` | ❌  |  |  |
| `remainingDailyBytes` | `integer` | ❌  |  |  |
| `message` | `string` | ❌  |  |  |
| `error` | `string` | ❌  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.video.getUploadLimits",
  "defs": {
    "main": {
      "type": "query",
      "description": "Get video upload limits for the authenticated user.",
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "canUpload"
          ],
          "properties": {
            "canUpload": {
              "type": "boolean"
            },
            "remainingDailyVideos": {
              "type": "integer"
            },
            "remainingDailyBytes": {
              "type": "integer"
            },
            "message": {
              "type": "string"
            },
            "error": {
              "type": "string"
            }
          }
        }
      }
    }
  }
}
```
