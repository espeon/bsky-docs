---
title: app.bsky.unspecced.getPostThreadV2
description: Reference for the app.bsky.unspecced.getPostThreadV2 lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

(NOTE: this endpoint is under development and WILL change without notice. Don't use it until it is moved out of `unspecced` or your application WILL break) Get posts in a thread. It is based in an anchor post at any depth of the tree, and returns posts above it (recursively resolving the parent, without further branching to their replies) and below it (recursive replies, with branching to their replies). Does not require auth, but additional metadata and filtering will be applied for authed requests.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `anchor` | `string` | ✅  | Reference (AT-URI) to post record. This is the anchor post, and the thread will be built around it. It can be any post in the tree, not necessarily a root post. | Format: `at-uri` |
| `above` | `boolean` | ❌  | Whether to include parents above the anchor. | Default: `true` |
| `below` | `integer` | ❌  | How many levels of replies to include below the anchor. | Min: 0<br/>Max: 20<br/>Default: `6` |
| `branchingFactor` | `integer` | ❌  | Maximum of replies to include at each level of the thread, except for the direct replies to the anchor, which are (NOTE: currently, during unspecced phase) all returned (NOTE: later they might be paginated). | Min: 0<br/>Max: 100<br/>Default: `10` |
| `prioritizeFollowedUsers` | `boolean` | ❌  | Whether to prioritize posts from followed users. It only has effect when the user is authenticated. | Default: `false` |
| `sort` | `string` | ❌  | Sorting for the thread replies. | Known Values: `newest`, `oldest`, `top`<br/>Default: `oldest` |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `thread` | Array of [`#threadItem`](#threaditem) | ✅  | A flat list of thread items. The depth of each item is indicated by the depth property inside the item. |  |
| `threadgate` | [`app.bsky.feed.defs#threadgateView`](/app/bsky/feed/defs#threadgateView) | ❌  |  |  |
| `hasOtherReplies` | `boolean` | ✅  | Whether this thread has additional replies. If true, a call can be made to the `getPostThreadOtherV2` endpoint to retrieve them. |  |

---

<a name="threaditem"></a>
### `threadItem`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `uri` | `string` | ✅  |  | Format: `at-uri` |
| `depth` | `integer` | ✅  | The nesting level of this item in the thread. Depth 0 means the anchor item. Items above have negative depths, items below have positive depths. |  |
| `value` | Union of:<br/>&nbsp;&nbsp;[`app.bsky.unspecced.defs#threadItemPost`](/app/bsky/unspecced/defs#threadItemPost)<br/>&nbsp;&nbsp;[`app.bsky.unspecced.defs#threadItemNoUnauthenticated`](/app/bsky/unspecced/defs#threadItemNoUnauthenticated)<br/>&nbsp;&nbsp;[`app.bsky.unspecced.defs#threadItemNotFound`](/app/bsky/unspecced/defs#threadItemNotFound)<br/>&nbsp;&nbsp;[`app.bsky.unspecced.defs#threadItemBlocked`](/app/bsky/unspecced/defs#threadItemBlocked) | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.unspecced.getPostThreadV2",
  "defs": {
    "main": {
      "type": "query",
      "description": "(NOTE: this endpoint is under development and WILL change without notice. Don't use it until it is moved out of `unspecced` or your application WILL break) Get posts in a thread. It is based in an anchor post at any depth of the tree, and returns posts above it (recursively resolving the parent, without further branching to their replies) and below it (recursive replies, with branching to their replies). Does not require auth, but additional metadata and filtering will be applied for authed requests.",
      "parameters": {
        "type": "params",
        "required": [
          "anchor"
        ],
        "properties": {
          "anchor": {
            "type": "string",
            "format": "at-uri",
            "description": "Reference (AT-URI) to post record. This is the anchor post, and the thread will be built around it. It can be any post in the tree, not necessarily a root post."
          },
          "above": {
            "type": "boolean",
            "description": "Whether to include parents above the anchor.",
            "default": true
          },
          "below": {
            "type": "integer",
            "description": "How many levels of replies to include below the anchor.",
            "default": 6,
            "minimum": 0,
            "maximum": 20
          },
          "branchingFactor": {
            "type": "integer",
            "description": "Maximum of replies to include at each level of the thread, except for the direct replies to the anchor, which are (NOTE: currently, during unspecced phase) all returned (NOTE: later they might be paginated).",
            "default": 10,
            "minimum": 0,
            "maximum": 100
          },
          "prioritizeFollowedUsers": {
            "type": "boolean",
            "description": "Whether to prioritize posts from followed users. It only has effect when the user is authenticated.",
            "default": false
          },
          "sort": {
            "type": "string",
            "description": "Sorting for the thread replies.",
            "knownValues": [
              "newest",
              "oldest",
              "top"
            ],
            "default": "oldest"
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "thread",
            "hasOtherReplies"
          ],
          "properties": {
            "thread": {
              "type": "array",
              "description": "A flat list of thread items. The depth of each item is indicated by the depth property inside the item.",
              "items": {
                "type": "ref",
                "ref": "#threadItem"
              }
            },
            "threadgate": {
              "type": "ref",
              "ref": "app.bsky.feed.defs#threadgateView"
            },
            "hasOtherReplies": {
              "type": "boolean",
              "description": "Whether this thread has additional replies. If true, a call can be made to the `getPostThreadOtherV2` endpoint to retrieve them."
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
            "app.bsky.unspecced.defs#threadItemPost",
            "app.bsky.unspecced.defs#threadItemNoUnauthenticated",
            "app.bsky.unspecced.defs#threadItemNotFound",
            "app.bsky.unspecced.defs#threadItemBlocked"
          ]
        }
      }
    }
  }
}
```
