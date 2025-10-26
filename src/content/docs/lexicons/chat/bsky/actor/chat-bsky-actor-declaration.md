---
title: chat.bsky.actor.declaration
description: Reference for the chat.bsky.actor.declaration lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `record`

A declaration of a Bluesky chat account.

**Record Key:** `literal:self`

**Record Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `allowIncoming` | `string` | ✅  |  | Known Values: `all`, `none`, `following` |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "chat.bsky.actor.declaration",
  "defs": {
    "main": {
      "type": "record",
      "description": "A declaration of a Bluesky chat account.",
      "key": "literal:self",
      "record": {
        "type": "object",
        "required": [
          "allowIncoming"
        ],
        "properties": {
          "allowIncoming": {
            "type": "string",
            "knownValues": [
              "all",
              "none",
              "following"
            ]
          }
        }
      }
    }
  }
}
```
