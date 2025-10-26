---
title: app.bsky.feed.postgate
description: Reference for the app.bsky.feed.postgate lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `record`

Record defining interaction rules for a post. The record key (rkey) of the postgate record must match the record key of the post, and that record must be in the same repository.

**Record Key:** `tid`

**Record Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `createdAt` | `string` | ✅  |  | Format: `datetime` |
| `post` | `string` | ✅  | Reference (AT-URI) to the post record. | Format: `at-uri` |
| `detachedEmbeddingUris` | Array of `string` | ❌  | List of AT-URIs embedding this post that the author has detached from. | Max Items: 50 |
| `embeddingRules` | Array of Union of:<br/>&nbsp;&nbsp;[`#disableRule`](#disablerule) | ❌  | List of rules defining who can embed this post. If value is an empty array or is undefined, no particular rules apply and anyone can embed. | Max Items: 5 |

---

<a name="disablerule"></a>
### `disableRule`

**Type:** `object`

Disables embedding of this post.

**Properties:**

_(No properties defined)_

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.feed.postgate",
  "defs": {
    "main": {
      "type": "record",
      "key": "tid",
      "description": "Record defining interaction rules for a post. The record key (rkey) of the postgate record must match the record key of the post, and that record must be in the same repository.",
      "record": {
        "type": "object",
        "required": [
          "post",
          "createdAt"
        ],
        "properties": {
          "createdAt": {
            "type": "string",
            "format": "datetime"
          },
          "post": {
            "type": "string",
            "format": "at-uri",
            "description": "Reference (AT-URI) to the post record."
          },
          "detachedEmbeddingUris": {
            "type": "array",
            "maxLength": 50,
            "items": {
              "type": "string",
              "format": "at-uri"
            },
            "description": "List of AT-URIs embedding this post that the author has detached from."
          },
          "embeddingRules": {
            "description": "List of rules defining who can embed this post. If value is an empty array or is undefined, no particular rules apply and anyone can embed.",
            "type": "array",
            "maxLength": 5,
            "items": {
              "type": "union",
              "refs": [
                "#disableRule"
              ]
            }
          }
        }
      }
    },
    "disableRule": {
      "type": "object",
      "description": "Disables embedding of this post.",
      "properties": {}
    }
  }
}
```
