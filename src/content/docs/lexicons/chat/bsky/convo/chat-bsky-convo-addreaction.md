---
title: chat.bsky.convo.addReaction
description: Reference for the chat.bsky.convo.addReaction lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Adds an emoji reaction to a message. Requires authentication. It is idempotent, so multiple calls from the same user with the same emoji result in a single reaction.

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `convoId` | `string` | ✅  |  |  |
| `messageId` | `string` | ✅  |  |  |
| `value` | `string` | ✅  |  | Min Length: 1<br/>Max Length: 64<br/>Min Graphemes: 1<br/>Max Graphemes: 1 |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `message` | [`chat.bsky.convo.defs#messageView`](/lexicons/chat/bsky/convo/chat-bsky-convo-defs#messageview) | ✅  |  |  |
**Possible Errors:**

- `ReactionMessageDeleted`: Indicates that the message has been deleted and reactions can no longer be added/removed.
- `ReactionLimitReached`: Indicates that the message has the maximum number of reactions allowed for a single user, and the requested reaction wasn't yet present. If it was already present, the request will not fail since it is idempotent.
- `ReactionInvalidValue`: Indicates the value for the reaction is not acceptable. In general, this means it is not an emoji.

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "chat.bsky.convo.addReaction",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Adds an emoji reaction to a message. Requires authentication. It is idempotent, so multiple calls from the same user with the same emoji result in a single reaction.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "convoId",
            "messageId",
            "value"
          ],
          "properties": {
            "convoId": {
              "type": "string"
            },
            "messageId": {
              "type": "string"
            },
            "value": {
              "type": "string",
              "minLength": 1,
              "maxLength": 64,
              "minGraphemes": 1,
              "maxGraphemes": 1
            }
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "message"
          ],
          "properties": {
            "message": {
              "type": "ref",
              "ref": "chat.bsky.convo.defs#messageView"
            }
          }
        }
      },
      "errors": [
        {
          "name": "ReactionMessageDeleted",
          "description": "Indicates that the message has been deleted and reactions can no longer be added/removed."
        },
        {
          "name": "ReactionLimitReached",
          "description": "Indicates that the message has the maximum number of reactions allowed for a single user, and the requested reaction wasn't yet present. If it was already present, the request will not fail since it is idempotent."
        },
        {
          "name": "ReactionInvalidValue",
          "description": "Indicates the value for the reaction is not acceptable. In general, this means it is not an emoji."
        }
      ]
    }
  }
}
```
