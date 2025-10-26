---
title: app.bsky.notification.unregisterPush
description: Reference for the app.bsky.notification.unregisterPush lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

The inverse of registerPush - inform a specified service that push notifications should no longer be sent to the given token for the requesting account. Requires auth.

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `serviceDid` | `string` | ✅  |  | Format: `did` |
| `token` | `string` | ✅  |  |  |
| `platform` | `string` | ✅  |  | Known Values: `ios`, `android`, `web` |
| `appId` | `string` | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.notification.unregisterPush",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "The inverse of registerPush - inform a specified service that push notifications should no longer be sent to the given token for the requesting account. Requires auth.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "serviceDid",
            "token",
            "platform",
            "appId"
          ],
          "properties": {
            "serviceDid": {
              "type": "string",
              "format": "did"
            },
            "token": {
              "type": "string"
            },
            "platform": {
              "type": "string",
              "knownValues": [
                "ios",
                "android",
                "web"
              ]
            },
            "appId": {
              "type": "string"
            }
          }
        }
      }
    }
  }
}
```
