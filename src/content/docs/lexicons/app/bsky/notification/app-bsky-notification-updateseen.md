---
title: app.bsky.notification.updateSeen
description: Reference for the app.bsky.notification.updateSeen lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Notify server that the requesting account has seen notifications. Requires auth.

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `seenAt` | `string` | ✅  |  | Format: `datetime` |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.notification.updateSeen",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Notify server that the requesting account has seen notifications. Requires auth.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "seenAt"
          ],
          "properties": {
            "seenAt": {
              "type": "string",
              "format": "datetime"
            }
          }
        }
      }
    }
  }
}
```
