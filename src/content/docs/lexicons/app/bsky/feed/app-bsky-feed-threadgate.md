---
title: app.bsky.feed.threadgate
description: Reference for the app.bsky.feed.threadgate lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `record`

Record defining interaction gating rules for a thread (aka, reply controls). The record key (rkey) of the threadgate record must match the record key of the thread's root post, and that record must be in the same repository.

**Record Key:** `tid`

**Record Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `post` | `string` | ✅  | Reference (AT-URI) to the post record. | Format: `at-uri` |
| `allow` | Array of Union of:<br/>&nbsp;&nbsp;[`#mentionRule`](#mentionrule)<br/>&nbsp;&nbsp;[`#followerRule`](#followerrule)<br/>&nbsp;&nbsp;[`#followingRule`](#followingrule)<br/>&nbsp;&nbsp;[`#listRule`](#listrule) | ❌  | List of rules defining who can reply to this post. If value is an empty array, no one can reply. If value is undefined, anyone can reply. | Max Items: 5 |
| `createdAt` | `string` | ✅  |  | Format: `datetime` |
| `hiddenReplies` | Array of `string` | ❌  | List of hidden reply URIs. | Max Items: 300 |

---

<a name="mentionrule"></a>
### `mentionRule`

**Type:** `object`

Allow replies from actors mentioned in your post.

**Properties:**

_(No properties defined)_

---

<a name="followerrule"></a>
### `followerRule`

**Type:** `object`

Allow replies from actors who follow you.

**Properties:**

_(No properties defined)_

---

<a name="followingrule"></a>
### `followingRule`

**Type:** `object`

Allow replies from actors you follow.

**Properties:**

_(No properties defined)_

---

<a name="listrule"></a>
### `listRule`

**Type:** `object`

Allow replies from actors on a list.

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `list` | `string` | ✅  |  | Format: `at-uri` |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.feed.threadgate",
  "defs": {
    "main": {
      "type": "record",
      "key": "tid",
      "description": "Record defining interaction gating rules for a thread (aka, reply controls). The record key (rkey) of the threadgate record must match the record key of the thread's root post, and that record must be in the same repository.",
      "record": {
        "type": "object",
        "required": [
          "post",
          "createdAt"
        ],
        "properties": {
          "post": {
            "type": "string",
            "format": "at-uri",
            "description": "Reference (AT-URI) to the post record."
          },
          "allow": {
            "description": "List of rules defining who can reply to this post. If value is an empty array, no one can reply. If value is undefined, anyone can reply.",
            "type": "array",
            "maxLength": 5,
            "items": {
              "type": "union",
              "refs": [
                "#mentionRule",
                "#followerRule",
                "#followingRule",
                "#listRule"
              ]
            }
          },
          "createdAt": {
            "type": "string",
            "format": "datetime"
          },
          "hiddenReplies": {
            "type": "array",
            "maxLength": 300,
            "items": {
              "type": "string",
              "format": "at-uri"
            },
            "description": "List of hidden reply URIs."
          }
        }
      }
    },
    "mentionRule": {
      "type": "object",
      "description": "Allow replies from actors mentioned in your post.",
      "properties": {}
    },
    "followerRule": {
      "type": "object",
      "description": "Allow replies from actors who follow you.",
      "properties": {}
    },
    "followingRule": {
      "type": "object",
      "description": "Allow replies from actors you follow.",
      "properties": {}
    },
    "listRule": {
      "type": "object",
      "description": "Allow replies from actors on a list.",
      "required": [
        "list"
      ],
      "properties": {
        "list": {
          "type": "string",
          "format": "at-uri"
        }
      }
    }
  }
}
```
