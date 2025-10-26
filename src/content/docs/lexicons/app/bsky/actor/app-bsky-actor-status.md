---
title: app.bsky.actor.status
description: Reference for the app.bsky.actor.status lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `record`

A declaration of a Bluesky account status.

**Record Key:** `literal:self`

**Record Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `status` | `string` | ✅  | The status for the account. | Known Values: `app.bsky.actor.status#live` |
| `embed` | Union of:<br/>&nbsp;&nbsp;[`app.bsky.embed.external`](/lexicons/app/bsky/embed/external#undefined) | ❌  | An optional embed associated with the status. |  |
| `durationMinutes` | `integer` | ❌  | The duration of the status in minutes. Applications can choose to impose minimum and maximum limits. | Min: 1 |
| `createdAt` | `string` | ✅  |  | Format: `datetime` |

---

<a name="live"></a>
### `live`

**Type:** `token`

Advertises an account as currently offering live content.


---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.actor.status",
  "defs": {
    "main": {
      "type": "record",
      "description": "A declaration of a Bluesky account status.",
      "key": "literal:self",
      "record": {
        "type": "object",
        "required": [
          "status",
          "createdAt"
        ],
        "properties": {
          "status": {
            "type": "string",
            "description": "The status for the account.",
            "knownValues": [
              "app.bsky.actor.status#live"
            ]
          },
          "embed": {
            "type": "union",
            "description": "An optional embed associated with the status.",
            "refs": [
              "app.bsky.embed.external"
            ]
          },
          "durationMinutes": {
            "type": "integer",
            "description": "The duration of the status in minutes. Applications can choose to impose minimum and maximum limits.",
            "minimum": 1
          },
          "createdAt": {
            "type": "string",
            "format": "datetime"
          }
        }
      }
    },
    "live": {
      "type": "token",
      "description": "Advertises an account as currently offering live content."
    }
  }
}
```
