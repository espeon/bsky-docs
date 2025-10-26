---
title: chat.bsky.convo.removeReaction
description: Reference for the chat.bsky.convo.removeReaction lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Removes an emoji reaction from a message. Requires authentication. It is idempotent, so multiple calls from the same user with the same emoji result in that reaction not being present, even if it already wasn't.

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
- `ReactionInvalidValue`: Indicates the value for the reaction is not acceptable. In general, this means it is not an emoji.

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "chat.bsky.convo.removeReaction",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Removes an emoji reaction from a message. Requires authentication. It is idempotent, so multiple calls from the same user with the same emoji result in that reaction not being present, even if it already wasn't.",
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
          "name": "ReactionInvalidValue",
          "description": "Indicates the value for the reaction is not acceptable. In general, this means it is not an emoji."
        }
      ]
    }
  }
}
```
