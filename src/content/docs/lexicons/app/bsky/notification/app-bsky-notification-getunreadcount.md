---
title: app.bsky.notification.getUnreadCount
description: Reference for the app.bsky.notification.getUnreadCount lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Count the number of unread notifications for the requesting account. Requires auth.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `priority` | `boolean` | ❌  |  |  |
| `seenAt` | `string` | ❌  |  | Format: `datetime` |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `count` | `integer` | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.notification.getUnreadCount",
  "defs": {
    "main": {
      "type": "query",
      "description": "Count the number of unread notifications for the requesting account. Requires auth.",
      "parameters": {
        "type": "params",
        "properties": {
          "priority": {
            "type": "boolean"
          },
          "seenAt": {
            "type": "string",
            "format": "datetime"
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "count"
          ],
          "properties": {
            "count": {
              "type": "integer"
            }
          }
        }
      }
    }
  }
}
```
