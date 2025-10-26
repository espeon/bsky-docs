---
title: chat.bsky.convo.defs
description: Reference for the chat.bsky.convo.defs lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="messageref"></a>
### `messageRef`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `did` | `string` | ✅  |  | Format: `did` |
| `convoId` | `string` | ✅  |  |  |
| `messageId` | `string` | ✅  |  |  |

---

<a name="messageinput"></a>
### `messageInput`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `text` | `string` | ✅  |  | Max Length: 10000<br/>Max Graphemes: 1000 |
| `facets` | Array of [`app.bsky.richtext.facet`](/app/bsky/richtext/facet#undefined) | ❌  | Annotations of text (mentions, URLs, hashtags, etc) |  |
| `embed` | Union of:<br/>&nbsp;&nbsp;[`app.bsky.embed.record`](/app/bsky/embed/record#undefined) | ❌  |  |  |

---

<a name="messageview"></a>
### `messageView`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `id` | `string` | ✅  |  |  |
| `rev` | `string` | ✅  |  |  |
| `text` | `string` | ✅  |  | Max Length: 10000<br/>Max Graphemes: 1000 |
| `facets` | Array of [`app.bsky.richtext.facet`](/app/bsky/richtext/facet#undefined) | ❌  | Annotations of text (mentions, URLs, hashtags, etc) |  |
| `embed` | Union of:<br/>&nbsp;&nbsp;[`app.bsky.embed.record#view`](/app/bsky/embed/record#view) | ❌  |  |  |
| `reactions` | Array of [`#reactionView`](#reactionview) | ❌  | Reactions to this message, in ascending order of creation time. |  |
| `sender` | [`#messageViewSender`](#messageviewsender) | ✅  |  |  |
| `sentAt` | `string` | ✅  |  | Format: `datetime` |

---

<a name="deletedmessageview"></a>
### `deletedMessageView`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `id` | `string` | ✅  |  |  |
| `rev` | `string` | ✅  |  |  |
| `sender` | [`#messageViewSender`](#messageviewsender) | ✅  |  |  |
| `sentAt` | `string` | ✅  |  | Format: `datetime` |

---

<a name="messageviewsender"></a>
### `messageViewSender`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `did` | `string` | ✅  |  | Format: `did` |

---

<a name="reactionview"></a>
### `reactionView`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `value` | `string` | ✅  |  |  |
| `sender` | [`#reactionViewSender`](#reactionviewsender) | ✅  |  |  |
| `createdAt` | `string` | ✅  |  | Format: `datetime` |

---

<a name="reactionviewsender"></a>
### `reactionViewSender`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `did` | `string` | ✅  |  | Format: `did` |

---

<a name="messageandreactionview"></a>
### `messageAndReactionView`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `message` | [`#messageView`](#messageview) | ✅  |  |  |
| `reaction` | [`#reactionView`](#reactionview) | ✅  |  |  |

---

<a name="convoview"></a>
### `convoView`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `id` | `string` | ✅  |  |  |
| `rev` | `string` | ✅  |  |  |
| `members` | Array of [`chat.bsky.actor.defs#profileViewBasic`](/chat/bsky/actor/defs#profileViewBasic) | ✅  |  |  |
| `lastMessage` | Union of:<br/>&nbsp;&nbsp;[`#messageView`](#messageview)<br/>&nbsp;&nbsp;[`#deletedMessageView`](#deletedmessageview) | ❌  |  |  |
| `lastReaction` | Union of:<br/>&nbsp;&nbsp;[`#messageAndReactionView`](#messageandreactionview) | ❌  |  |  |
| `muted` | `boolean` | ✅  |  |  |
| `status` | `string` | ❌  |  | Known Values: `request`, `accepted` |
| `unreadCount` | `integer` | ✅  |  |  |

---

<a name="logbeginconvo"></a>
### `logBeginConvo`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `rev` | `string` | ✅  |  |  |
| `convoId` | `string` | ✅  |  |  |

---

<a name="logacceptconvo"></a>
### `logAcceptConvo`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `rev` | `string` | ✅  |  |  |
| `convoId` | `string` | ✅  |  |  |

---

<a name="logleaveconvo"></a>
### `logLeaveConvo`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `rev` | `string` | ✅  |  |  |
| `convoId` | `string` | ✅  |  |  |

---

<a name="logmuteconvo"></a>
### `logMuteConvo`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `rev` | `string` | ✅  |  |  |
| `convoId` | `string` | ✅  |  |  |

---

<a name="logunmuteconvo"></a>
### `logUnmuteConvo`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `rev` | `string` | ✅  |  |  |
| `convoId` | `string` | ✅  |  |  |

---

<a name="logcreatemessage"></a>
### `logCreateMessage`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `rev` | `string` | ✅  |  |  |
| `convoId` | `string` | ✅  |  |  |
| `message` | Union of:<br/>&nbsp;&nbsp;[`#messageView`](#messageview)<br/>&nbsp;&nbsp;[`#deletedMessageView`](#deletedmessageview) | ✅  |  |  |

---

<a name="logdeletemessage"></a>
### `logDeleteMessage`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `rev` | `string` | ✅  |  |  |
| `convoId` | `string` | ✅  |  |  |
| `message` | Union of:<br/>&nbsp;&nbsp;[`#messageView`](#messageview)<br/>&nbsp;&nbsp;[`#deletedMessageView`](#deletedmessageview) | ✅  |  |  |

---

<a name="logreadmessage"></a>
### `logReadMessage`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `rev` | `string` | ✅  |  |  |
| `convoId` | `string` | ✅  |  |  |
| `message` | Union of:<br/>&nbsp;&nbsp;[`#messageView`](#messageview)<br/>&nbsp;&nbsp;[`#deletedMessageView`](#deletedmessageview) | ✅  |  |  |

---

<a name="logaddreaction"></a>
### `logAddReaction`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `rev` | `string` | ✅  |  |  |
| `convoId` | `string` | ✅  |  |  |
| `message` | Union of:<br/>&nbsp;&nbsp;[`#messageView`](#messageview)<br/>&nbsp;&nbsp;[`#deletedMessageView`](#deletedmessageview) | ✅  |  |  |
| `reaction` | [`#reactionView`](#reactionview) | ✅  |  |  |

---

<a name="logremovereaction"></a>
### `logRemoveReaction`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `rev` | `string` | ✅  |  |  |
| `convoId` | `string` | ✅  |  |  |
| `message` | Union of:<br/>&nbsp;&nbsp;[`#messageView`](#messageview)<br/>&nbsp;&nbsp;[`#deletedMessageView`](#deletedmessageview) | ✅  |  |  |
| `reaction` | [`#reactionView`](#reactionview) | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "chat.bsky.convo.defs",
  "defs": {
    "messageRef": {
      "type": "object",
      "required": [
        "did",
        "messageId",
        "convoId"
      ],
      "properties": {
        "did": {
          "type": "string",
          "format": "did"
        },
        "convoId": {
          "type": "string"
        },
        "messageId": {
          "type": "string"
        }
      }
    },
    "messageInput": {
      "type": "object",
      "required": [
        "text"
      ],
      "properties": {
        "text": {
          "type": "string",
          "maxLength": 10000,
          "maxGraphemes": 1000
        },
        "facets": {
          "type": "array",
          "description": "Annotations of text (mentions, URLs, hashtags, etc)",
          "items": {
            "type": "ref",
            "ref": "app.bsky.richtext.facet"
          }
        },
        "embed": {
          "type": "union",
          "refs": [
            "app.bsky.embed.record"
          ]
        }
      }
    },
    "messageView": {
      "type": "object",
      "required": [
        "id",
        "rev",
        "text",
        "sender",
        "sentAt"
      ],
      "properties": {
        "id": {
          "type": "string"
        },
        "rev": {
          "type": "string"
        },
        "text": {
          "type": "string",
          "maxLength": 10000,
          "maxGraphemes": 1000
        },
        "facets": {
          "type": "array",
          "description": "Annotations of text (mentions, URLs, hashtags, etc)",
          "items": {
            "type": "ref",
            "ref": "app.bsky.richtext.facet"
          }
        },
        "embed": {
          "type": "union",
          "refs": [
            "app.bsky.embed.record#view"
          ]
        },
        "reactions": {
          "type": "array",
          "description": "Reactions to this message, in ascending order of creation time.",
          "items": {
            "type": "ref",
            "ref": "#reactionView"
          }
        },
        "sender": {
          "type": "ref",
          "ref": "#messageViewSender"
        },
        "sentAt": {
          "type": "string",
          "format": "datetime"
        }
      }
    },
    "deletedMessageView": {
      "type": "object",
      "required": [
        "id",
        "rev",
        "sender",
        "sentAt"
      ],
      "properties": {
        "id": {
          "type": "string"
        },
        "rev": {
          "type": "string"
        },
        "sender": {
          "type": "ref",
          "ref": "#messageViewSender"
        },
        "sentAt": {
          "type": "string",
          "format": "datetime"
        }
      }
    },
    "messageViewSender": {
      "type": "object",
      "required": [
        "did"
      ],
      "properties": {
        "did": {
          "type": "string",
          "format": "did"
        }
      }
    },
    "reactionView": {
      "type": "object",
      "required": [
        "value",
        "sender",
        "createdAt"
      ],
      "properties": {
        "value": {
          "type": "string"
        },
        "sender": {
          "type": "ref",
          "ref": "#reactionViewSender"
        },
        "createdAt": {
          "type": "string",
          "format": "datetime"
        }
      }
    },
    "reactionViewSender": {
      "type": "object",
      "required": [
        "did"
      ],
      "properties": {
        "did": {
          "type": "string",
          "format": "did"
        }
      }
    },
    "messageAndReactionView": {
      "type": "object",
      "required": [
        "message",
        "reaction"
      ],
      "properties": {
        "message": {
          "type": "ref",
          "ref": "#messageView"
        },
        "reaction": {
          "type": "ref",
          "ref": "#reactionView"
        }
      }
    },
    "convoView": {
      "type": "object",
      "required": [
        "id",
        "rev",
        "members",
        "muted",
        "unreadCount"
      ],
      "properties": {
        "id": {
          "type": "string"
        },
        "rev": {
          "type": "string"
        },
        "members": {
          "type": "array",
          "items": {
            "type": "ref",
            "ref": "chat.bsky.actor.defs#profileViewBasic"
          }
        },
        "lastMessage": {
          "type": "union",
          "refs": [
            "#messageView",
            "#deletedMessageView"
          ]
        },
        "lastReaction": {
          "type": "union",
          "refs": [
            "#messageAndReactionView"
          ]
        },
        "muted": {
          "type": "boolean"
        },
        "status": {
          "type": "string",
          "knownValues": [
            "request",
            "accepted"
          ]
        },
        "unreadCount": {
          "type": "integer"
        }
      }
    },
    "logBeginConvo": {
      "type": "object",
      "required": [
        "rev",
        "convoId"
      ],
      "properties": {
        "rev": {
          "type": "string"
        },
        "convoId": {
          "type": "string"
        }
      }
    },
    "logAcceptConvo": {
      "type": "object",
      "required": [
        "rev",
        "convoId"
      ],
      "properties": {
        "rev": {
          "type": "string"
        },
        "convoId": {
          "type": "string"
        }
      }
    },
    "logLeaveConvo": {
      "type": "object",
      "required": [
        "rev",
        "convoId"
      ],
      "properties": {
        "rev": {
          "type": "string"
        },
        "convoId": {
          "type": "string"
        }
      }
    },
    "logMuteConvo": {
      "type": "object",
      "required": [
        "rev",
        "convoId"
      ],
      "properties": {
        "rev": {
          "type": "string"
        },
        "convoId": {
          "type": "string"
        }
      }
    },
    "logUnmuteConvo": {
      "type": "object",
      "required": [
        "rev",
        "convoId"
      ],
      "properties": {
        "rev": {
          "type": "string"
        },
        "convoId": {
          "type": "string"
        }
      }
    },
    "logCreateMessage": {
      "type": "object",
      "required": [
        "rev",
        "convoId",
        "message"
      ],
      "properties": {
        "rev": {
          "type": "string"
        },
        "convoId": {
          "type": "string"
        },
        "message": {
          "type": "union",
          "refs": [
            "#messageView",
            "#deletedMessageView"
          ]
        }
      }
    },
    "logDeleteMessage": {
      "type": "object",
      "required": [
        "rev",
        "convoId",
        "message"
      ],
      "properties": {
        "rev": {
          "type": "string"
        },
        "convoId": {
          "type": "string"
        },
        "message": {
          "type": "union",
          "refs": [
            "#messageView",
            "#deletedMessageView"
          ]
        }
      }
    },
    "logReadMessage": {
      "type": "object",
      "required": [
        "rev",
        "convoId",
        "message"
      ],
      "properties": {
        "rev": {
          "type": "string"
        },
        "convoId": {
          "type": "string"
        },
        "message": {
          "type": "union",
          "refs": [
            "#messageView",
            "#deletedMessageView"
          ]
        }
      }
    },
    "logAddReaction": {
      "type": "object",
      "required": [
        "rev",
        "convoId",
        "message",
        "reaction"
      ],
      "properties": {
        "rev": {
          "type": "string"
        },
        "convoId": {
          "type": "string"
        },
        "message": {
          "type": "union",
          "refs": [
            "#messageView",
            "#deletedMessageView"
          ]
        },
        "reaction": {
          "type": "ref",
          "ref": "#reactionView"
        }
      }
    },
    "logRemoveReaction": {
      "type": "object",
      "required": [
        "rev",
        "convoId",
        "message",
        "reaction"
      ],
      "properties": {
        "rev": {
          "type": "string"
        },
        "convoId": {
          "type": "string"
        },
        "message": {
          "type": "union",
          "refs": [
            "#messageView",
            "#deletedMessageView"
          ]
        },
        "reaction": {
          "type": "ref",
          "ref": "#reactionView"
        }
      }
    }
  }
}
```
