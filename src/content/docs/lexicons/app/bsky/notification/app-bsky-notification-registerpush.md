---
title: app.bsky.notification.registerPush
description: Reference for the app.bsky.notification.registerPush lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Register to receive push notifications, via a specified service, for the requesting account. Requires auth.

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
| `ageRestricted` | `boolean` | ❌  | Set to true when the actor is age restricted |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.notification.registerPush",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Register to receive push notifications, via a specified service, for the requesting account. Requires auth.",
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
            },
            "ageRestricted": {
              "type": "boolean",
              "description": "Set to true when the actor is age restricted"
            }
          }
        }
      }
    }
  }
}
```
