---
title: app.bsky.unspecced.getPostThreadOtherV2
description: Reference for the app.bsky.unspecced.getPostThreadOtherV2 lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

(NOTE: this endpoint is under development and WILL change without notice. Don't use it until it is moved out of `unspecced` or your application WILL break) Get additional posts under a thread e.g. replies hidden by threadgate. Based on an anchor post at any depth of the tree, returns top-level replies below that anchor. It does not include ancestors nor the anchor itself. This should be called after exhausting `app.bsky.unspecced.getPostThreadV2`. Does not require auth, but additional metadata and filtering will be applied for authed requests.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `anchor` | `string` | ✅  | Reference (AT-URI) to post record. This is the anchor post. | Format: `at-uri` |
| `prioritizeFollowedUsers` | `boolean` | ❌  | Whether to prioritize posts from followed users. It only has effect when the user is authenticated. | Default: `false` |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `thread` | Array of [`#threadItem`](#threaditem) | ✅  | A flat list of other thread items. The depth of each item is indicated by the depth property inside the item. |  |

---

<a name="threaditem"></a>
### `threadItem`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `uri` | `string` | ✅  |  | Format: `at-uri` |
| `depth` | `integer` | ✅  | The nesting level of this item in the thread. Depth 0 means the anchor item. Items above have negative depths, items below have positive depths. |  |
| `value` | Union of:<br/>&nbsp;&nbsp;[`app.bsky.unspecced.defs#threadItemPost`](lexicons/app/bsky/unspecced/defs#threadItemPost) | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.unspecced.getPostThreadOtherV2",
  "defs": {
    "main": {
      "type": "query",
      "description": "(NOTE: this endpoint is under development and WILL change without notice. Don't use it until it is moved out of `unspecced` or your application WILL break) Get additional posts under a thread e.g. replies hidden by threadgate. Based on an anchor post at any depth of the tree, returns top-level replies below that anchor. It does not include ancestors nor the anchor itself. This should be called after exhausting `app.bsky.unspecced.getPostThreadV2`. Does not require auth, but additional metadata and filtering will be applied for authed requests.",
      "parameters": {
        "type": "params",
        "required": [
          "anchor"
        ],
        "properties": {
          "anchor": {
            "type": "string",
            "format": "at-uri",
            "description": "Reference (AT-URI) to post record. This is the anchor post."
          },
          "prioritizeFollowedUsers": {
            "type": "boolean",
            "description": "Whether to prioritize posts from followed users. It only has effect when the user is authenticated.",
            "default": false
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "thread"
          ],
          "properties": {
            "thread": {
              "type": "array",
              "description": "A flat list of other thread items. The depth of each item is indicated by the depth property inside the item.",
              "items": {
                "type": "ref",
                "ref": "#threadItem"
              }
            }
          }
        }
      }
    },
    "threadItem": {
      "type": "object",
      "required": [
        "uri",
        "depth",
        "value"
      ],
      "properties": {
        "uri": {
          "type": "string",
          "format": "at-uri"
        },
        "depth": {
          "type": "integer",
          "description": "The nesting level of this item in the thread. Depth 0 means the anchor item. Items above have negative depths, items below have positive depths."
        },
        "value": {
          "type": "union",
          "refs": [
            "app.bsky.unspecced.defs#threadItemPost"
          ]
        }
      }
    }
  }
}
```
