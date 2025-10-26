---
title: app.bsky.feed.defs
description: Reference for the app.bsky.feed.defs lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="postview"></a>
### `postView`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `uri` | `string` | ✅  |  | Format: `at-uri` |
| `cid` | `string` | ✅  |  | Format: `cid` |
| `author` | [`app.bsky.actor.defs#profileViewBasic`](/app/bsky/actor/defs#profileViewBasic) | ✅  |  |  |
| `record` | `unknown` | ✅  |  |  |
| `embed` | Union of:<br/>&nbsp;&nbsp;[`app.bsky.embed.images#view`](/app/bsky/embed/images#view)<br/>&nbsp;&nbsp;[`app.bsky.embed.video#view`](/app/bsky/embed/video#view)<br/>&nbsp;&nbsp;[`app.bsky.embed.external#view`](/app/bsky/embed/external#view)<br/>&nbsp;&nbsp;[`app.bsky.embed.record#view`](/app/bsky/embed/record#view)<br/>&nbsp;&nbsp;[`app.bsky.embed.recordWithMedia#view`](/app/bsky/embed/recordwithmedia#view) | ❌  |  |  |
| `bookmarkCount` | `integer` | ❌  |  |  |
| `replyCount` | `integer` | ❌  |  |  |
| `repostCount` | `integer` | ❌  |  |  |
| `likeCount` | `integer` | ❌  |  |  |
| `quoteCount` | `integer` | ❌  |  |  |
| `indexedAt` | `string` | ✅  |  | Format: `datetime` |
| `viewer` | [`#viewerState`](#viewerstate) | ❌  |  |  |
| `labels` | Array of [`com.atproto.label.defs#label`](/com/atproto/label/defs#label) | ❌  |  |  |
| `threadgate` | [`#threadgateView`](#threadgateview) | ❌  |  |  |

---

<a name="viewerstate"></a>
### `viewerState`

**Type:** `object`

Metadata about the requesting account's relationship with the subject content. Only has meaningful content for authed requests.

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `repost` | `string` | ❌  |  | Format: `at-uri` |
| `like` | `string` | ❌  |  | Format: `at-uri` |
| `bookmarked` | `boolean` | ❌  |  |  |
| `threadMuted` | `boolean` | ❌  |  |  |
| `replyDisabled` | `boolean` | ❌  |  |  |
| `embeddingDisabled` | `boolean` | ❌  |  |  |
| `pinned` | `boolean` | ❌  |  |  |

---

<a name="threadcontext"></a>
### `threadContext`

**Type:** `object`

Metadata about this post within the context of the thread it is in.

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `rootAuthorLike` | `string` | ❌  |  | Format: `at-uri` |

---

<a name="feedviewpost"></a>
### `feedViewPost`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `post` | [`#postView`](#postview) | ✅  |  |  |
| `reply` | [`#replyRef`](#replyref) | ❌  |  |  |
| `reason` | Union of:<br/>&nbsp;&nbsp;[`#reasonRepost`](#reasonrepost)<br/>&nbsp;&nbsp;[`#reasonPin`](#reasonpin) | ❌  |  |  |
| `feedContext` | `string` | ❌  | Context provided by feed generator that may be passed back alongside interactions. | Max Length: 2000 |
| `reqId` | `string` | ❌  | Unique identifier per request that may be passed back alongside interactions. | Max Length: 100 |

---

<a name="replyref"></a>
### `replyRef`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `root` | Union of:<br/>&nbsp;&nbsp;[`#postView`](#postview)<br/>&nbsp;&nbsp;[`#notFoundPost`](#notfoundpost)<br/>&nbsp;&nbsp;[`#blockedPost`](#blockedpost) | ✅  |  |  |
| `parent` | Union of:<br/>&nbsp;&nbsp;[`#postView`](#postview)<br/>&nbsp;&nbsp;[`#notFoundPost`](#notfoundpost)<br/>&nbsp;&nbsp;[`#blockedPost`](#blockedpost) | ✅  |  |  |
| `grandparentAuthor` | [`app.bsky.actor.defs#profileViewBasic`](/app/bsky/actor/defs#profileViewBasic) | ❌  | When parent is a reply to another post, this is the author of that post. |  |

---

<a name="reasonrepost"></a>
### `reasonRepost`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `by` | [`app.bsky.actor.defs#profileViewBasic`](/app/bsky/actor/defs#profileViewBasic) | ✅  |  |  |
| `uri` | `string` | ❌  |  | Format: `at-uri` |
| `cid` | `string` | ❌  |  | Format: `cid` |
| `indexedAt` | `string` | ✅  |  | Format: `datetime` |

---

<a name="reasonpin"></a>
### `reasonPin`

**Type:** `object`

**Properties:**

_(No properties defined)_

---

<a name="threadviewpost"></a>
### `threadViewPost`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `post` | [`#postView`](#postview) | ✅  |  |  |
| `parent` | Union of:<br/>&nbsp;&nbsp;[`#threadViewPost`](#threadviewpost)<br/>&nbsp;&nbsp;[`#notFoundPost`](#notfoundpost)<br/>&nbsp;&nbsp;[`#blockedPost`](#blockedpost) | ❌  |  |  |
| `replies` | Array of Union of:<br/>&nbsp;&nbsp;[`#threadViewPost`](#threadviewpost)<br/>&nbsp;&nbsp;[`#notFoundPost`](#notfoundpost)<br/>&nbsp;&nbsp;[`#blockedPost`](#blockedpost) | ❌  |  |  |
| `threadContext` | [`#threadContext`](#threadcontext) | ❌  |  |  |

---

<a name="notfoundpost"></a>
### `notFoundPost`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `uri` | `string` | ✅  |  | Format: `at-uri` |
| `notFound` | `boolean` | ✅  |  | Const: `true` |

---

<a name="blockedpost"></a>
### `blockedPost`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `uri` | `string` | ✅  |  | Format: `at-uri` |
| `blocked` | `boolean` | ✅  |  | Const: `true` |
| `author` | [`#blockedAuthor`](#blockedauthor) | ✅  |  |  |

---

<a name="blockedauthor"></a>
### `blockedAuthor`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `did` | `string` | ✅  |  | Format: `did` |
| `viewer` | [`app.bsky.actor.defs#viewerState`](/app/bsky/actor/defs#viewerState) | ❌  |  |  |

---

<a name="generatorview"></a>
### `generatorView`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `uri` | `string` | ✅  |  | Format: `at-uri` |
| `cid` | `string` | ✅  |  | Format: `cid` |
| `did` | `string` | ✅  |  | Format: `did` |
| `creator` | [`app.bsky.actor.defs#profileView`](/app/bsky/actor/defs#profileView) | ✅  |  |  |
| `displayName` | `string` | ✅  |  |  |
| `description` | `string` | ❌  |  | Max Length: 3000<br/>Max Graphemes: 300 |
| `descriptionFacets` | Array of [`app.bsky.richtext.facet`](/app/bsky/richtext/facet#undefined) | ❌  |  |  |
| `avatar` | `string` | ❌  |  | Format: `uri` |
| `likeCount` | `integer` | ❌  |  | Min: 0 |
| `acceptsInteractions` | `boolean` | ❌  |  |  |
| `labels` | Array of [`com.atproto.label.defs#label`](/com/atproto/label/defs#label) | ❌  |  |  |
| `viewer` | [`#generatorViewerState`](#generatorviewerstate) | ❌  |  |  |
| `contentMode` | `string` | ❌  |  | Known Values: `app.bsky.feed.defs#contentModeUnspecified`, `app.bsky.feed.defs#contentModeVideo` |
| `indexedAt` | `string` | ✅  |  | Format: `datetime` |

---

<a name="generatorviewerstate"></a>
### `generatorViewerState`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `like` | `string` | ❌  |  | Format: `at-uri` |

---

<a name="skeletonfeedpost"></a>
### `skeletonFeedPost`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `post` | `string` | ✅  |  | Format: `at-uri` |
| `reason` | Union of:<br/>&nbsp;&nbsp;[`#skeletonReasonRepost`](#skeletonreasonrepost)<br/>&nbsp;&nbsp;[`#skeletonReasonPin`](#skeletonreasonpin) | ❌  |  |  |
| `feedContext` | `string` | ❌  | Context that will be passed through to client and may be passed to feed generator back alongside interactions. | Max Length: 2000 |

---

<a name="skeletonreasonrepost"></a>
### `skeletonReasonRepost`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `repost` | `string` | ✅  |  | Format: `at-uri` |

---

<a name="skeletonreasonpin"></a>
### `skeletonReasonPin`

**Type:** `object`

**Properties:**

_(No properties defined)_

---

<a name="threadgateview"></a>
### `threadgateView`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `uri` | `string` | ❌  |  | Format: `at-uri` |
| `cid` | `string` | ❌  |  | Format: `cid` |
| `record` | `unknown` | ❌  |  |  |
| `lists` | Array of [`app.bsky.graph.defs#listViewBasic`](/app/bsky/graph/defs#listViewBasic) | ❌  |  |  |

---

<a name="interaction"></a>
### `interaction`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `item` | `string` | ❌  |  | Format: `at-uri` |
| `event` | `string` | ❌  |  | Known Values: `app.bsky.feed.defs#requestLess`, `app.bsky.feed.defs#requestMore`, `app.bsky.feed.defs#clickthroughItem`, `app.bsky.feed.defs#clickthroughAuthor`, `app.bsky.feed.defs#clickthroughReposter`, `app.bsky.feed.defs#clickthroughEmbed`, `app.bsky.feed.defs#interactionSeen`, `app.bsky.feed.defs#interactionLike`, `app.bsky.feed.defs#interactionRepost`, `app.bsky.feed.defs#interactionReply`, `app.bsky.feed.defs#interactionQuote`, `app.bsky.feed.defs#interactionShare` |
| `feedContext` | `string` | ❌  | Context on a feed item that was originally supplied by the feed generator on getFeedSkeleton. | Max Length: 2000 |
| `reqId` | `string` | ❌  | Unique identifier per request that may be passed back alongside interactions. | Max Length: 100 |

---

<a name="requestless"></a>
### `requestLess`

**Type:** `token`

Request that less content like the given feed item be shown in the feed


---

<a name="requestmore"></a>
### `requestMore`

**Type:** `token`

Request that more content like the given feed item be shown in the feed


---

<a name="clickthroughitem"></a>
### `clickthroughItem`

**Type:** `token`

User clicked through to the feed item


---

<a name="clickthroughauthor"></a>
### `clickthroughAuthor`

**Type:** `token`

User clicked through to the author of the feed item


---

<a name="clickthroughreposter"></a>
### `clickthroughReposter`

**Type:** `token`

User clicked through to the reposter of the feed item


---

<a name="clickthroughembed"></a>
### `clickthroughEmbed`

**Type:** `token`

User clicked through to the embedded content of the feed item


---

<a name="contentmodeunspecified"></a>
### `contentModeUnspecified`

**Type:** `token`

Declares the feed generator returns any types of posts.


---

<a name="contentmodevideo"></a>
### `contentModeVideo`

**Type:** `token`

Declares the feed generator returns posts containing app.bsky.embed.video embeds.


---

<a name="interactionseen"></a>
### `interactionSeen`

**Type:** `token`

Feed item was seen by user


---

<a name="interactionlike"></a>
### `interactionLike`

**Type:** `token`

User liked the feed item


---

<a name="interactionrepost"></a>
### `interactionRepost`

**Type:** `token`

User reposted the feed item


---

<a name="interactionreply"></a>
### `interactionReply`

**Type:** `token`

User replied to the feed item


---

<a name="interactionquote"></a>
### `interactionQuote`

**Type:** `token`

User quoted the feed item


---

<a name="interactionshare"></a>
### `interactionShare`

**Type:** `token`

User shared the feed item


---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.feed.defs",
  "defs": {
    "postView": {
      "type": "object",
      "required": [
        "uri",
        "cid",
        "author",
        "record",
        "indexedAt"
      ],
      "properties": {
        "uri": {
          "type": "string",
          "format": "at-uri"
        },
        "cid": {
          "type": "string",
          "format": "cid"
        },
        "author": {
          "type": "ref",
          "ref": "app.bsky.actor.defs#profileViewBasic"
        },
        "record": {
          "type": "unknown"
        },
        "embed": {
          "type": "union",
          "refs": [
            "app.bsky.embed.images#view",
            "app.bsky.embed.video#view",
            "app.bsky.embed.external#view",
            "app.bsky.embed.record#view",
            "app.bsky.embed.recordWithMedia#view"
          ]
        },
        "bookmarkCount": {
          "type": "integer"
        },
        "replyCount": {
          "type": "integer"
        },
        "repostCount": {
          "type": "integer"
        },
        "likeCount": {
          "type": "integer"
        },
        "quoteCount": {
          "type": "integer"
        },
        "indexedAt": {
          "type": "string",
          "format": "datetime"
        },
        "viewer": {
          "type": "ref",
          "ref": "#viewerState"
        },
        "labels": {
          "type": "array",
          "items": {
            "type": "ref",
            "ref": "com.atproto.label.defs#label"
          }
        },
        "threadgate": {
          "type": "ref",
          "ref": "#threadgateView"
        }
      }
    },
    "viewerState": {
      "type": "object",
      "description": "Metadata about the requesting account's relationship with the subject content. Only has meaningful content for authed requests.",
      "properties": {
        "repost": {
          "type": "string",
          "format": "at-uri"
        },
        "like": {
          "type": "string",
          "format": "at-uri"
        },
        "bookmarked": {
          "type": "boolean"
        },
        "threadMuted": {
          "type": "boolean"
        },
        "replyDisabled": {
          "type": "boolean"
        },
        "embeddingDisabled": {
          "type": "boolean"
        },
        "pinned": {
          "type": "boolean"
        }
      }
    },
    "threadContext": {
      "type": "object",
      "description": "Metadata about this post within the context of the thread it is in.",
      "properties": {
        "rootAuthorLike": {
          "type": "string",
          "format": "at-uri"
        }
      }
    },
    "feedViewPost": {
      "type": "object",
      "required": [
        "post"
      ],
      "properties": {
        "post": {
          "type": "ref",
          "ref": "#postView"
        },
        "reply": {
          "type": "ref",
          "ref": "#replyRef"
        },
        "reason": {
          "type": "union",
          "refs": [
            "#reasonRepost",
            "#reasonPin"
          ]
        },
        "feedContext": {
          "type": "string",
          "description": "Context provided by feed generator that may be passed back alongside interactions.",
          "maxLength": 2000
        },
        "reqId": {
          "type": "string",
          "description": "Unique identifier per request that may be passed back alongside interactions.",
          "maxLength": 100
        }
      }
    },
    "replyRef": {
      "type": "object",
      "required": [
        "root",
        "parent"
      ],
      "properties": {
        "root": {
          "type": "union",
          "refs": [
            "#postView",
            "#notFoundPost",
            "#blockedPost"
          ]
        },
        "parent": {
          "type": "union",
          "refs": [
            "#postView",
            "#notFoundPost",
            "#blockedPost"
          ]
        },
        "grandparentAuthor": {
          "type": "ref",
          "ref": "app.bsky.actor.defs#profileViewBasic",
          "description": "When parent is a reply to another post, this is the author of that post."
        }
      }
    },
    "reasonRepost": {
      "type": "object",
      "required": [
        "by",
        "indexedAt"
      ],
      "properties": {
        "by": {
          "type": "ref",
          "ref": "app.bsky.actor.defs#profileViewBasic"
        },
        "uri": {
          "type": "string",
          "format": "at-uri"
        },
        "cid": {
          "type": "string",
          "format": "cid"
        },
        "indexedAt": {
          "type": "string",
          "format": "datetime"
        }
      }
    },
    "reasonPin": {
      "type": "object",
      "properties": {}
    },
    "threadViewPost": {
      "type": "object",
      "required": [
        "post"
      ],
      "properties": {
        "post": {
          "type": "ref",
          "ref": "#postView"
        },
        "parent": {
          "type": "union",
          "refs": [
            "#threadViewPost",
            "#notFoundPost",
            "#blockedPost"
          ]
        },
        "replies": {
          "type": "array",
          "items": {
            "type": "union",
            "refs": [
              "#threadViewPost",
              "#notFoundPost",
              "#blockedPost"
            ]
          }
        },
        "threadContext": {
          "type": "ref",
          "ref": "#threadContext"
        }
      }
    },
    "notFoundPost": {
      "type": "object",
      "required": [
        "uri",
        "notFound"
      ],
      "properties": {
        "uri": {
          "type": "string",
          "format": "at-uri"
        },
        "notFound": {
          "type": "boolean",
          "const": true
        }
      }
    },
    "blockedPost": {
      "type": "object",
      "required": [
        "uri",
        "blocked",
        "author"
      ],
      "properties": {
        "uri": {
          "type": "string",
          "format": "at-uri"
        },
        "blocked": {
          "type": "boolean",
          "const": true
        },
        "author": {
          "type": "ref",
          "ref": "#blockedAuthor"
        }
      }
    },
    "blockedAuthor": {
      "type": "object",
      "required": [
        "did"
      ],
      "properties": {
        "did": {
          "type": "string",
          "format": "did"
        },
        "viewer": {
          "type": "ref",
          "ref": "app.bsky.actor.defs#viewerState"
        }
      }
    },
    "generatorView": {
      "type": "object",
      "required": [
        "uri",
        "cid",
        "did",
        "creator",
        "displayName",
        "indexedAt"
      ],
      "properties": {
        "uri": {
          "type": "string",
          "format": "at-uri"
        },
        "cid": {
          "type": "string",
          "format": "cid"
        },
        "did": {
          "type": "string",
          "format": "did"
        },
        "creator": {
          "type": "ref",
          "ref": "app.bsky.actor.defs#profileView"
        },
        "displayName": {
          "type": "string"
        },
        "description": {
          "type": "string",
          "maxGraphemes": 300,
          "maxLength": 3000
        },
        "descriptionFacets": {
          "type": "array",
          "items": {
            "type": "ref",
            "ref": "app.bsky.richtext.facet"
          }
        },
        "avatar": {
          "type": "string",
          "format": "uri"
        },
        "likeCount": {
          "type": "integer",
          "minimum": 0
        },
        "acceptsInteractions": {
          "type": "boolean"
        },
        "labels": {
          "type": "array",
          "items": {
            "type": "ref",
            "ref": "com.atproto.label.defs#label"
          }
        },
        "viewer": {
          "type": "ref",
          "ref": "#generatorViewerState"
        },
        "contentMode": {
          "type": "string",
          "knownValues": [
            "app.bsky.feed.defs#contentModeUnspecified",
            "app.bsky.feed.defs#contentModeVideo"
          ]
        },
        "indexedAt": {
          "type": "string",
          "format": "datetime"
        }
      }
    },
    "generatorViewerState": {
      "type": "object",
      "properties": {
        "like": {
          "type": "string",
          "format": "at-uri"
        }
      }
    },
    "skeletonFeedPost": {
      "type": "object",
      "required": [
        "post"
      ],
      "properties": {
        "post": {
          "type": "string",
          "format": "at-uri"
        },
        "reason": {
          "type": "union",
          "refs": [
            "#skeletonReasonRepost",
            "#skeletonReasonPin"
          ]
        },
        "feedContext": {
          "type": "string",
          "description": "Context that will be passed through to client and may be passed to feed generator back alongside interactions.",
          "maxLength": 2000
        }
      }
    },
    "skeletonReasonRepost": {
      "type": "object",
      "required": [
        "repost"
      ],
      "properties": {
        "repost": {
          "type": "string",
          "format": "at-uri"
        }
      }
    },
    "skeletonReasonPin": {
      "type": "object",
      "properties": {}
    },
    "threadgateView": {
      "type": "object",
      "properties": {
        "uri": {
          "type": "string",
          "format": "at-uri"
        },
        "cid": {
          "type": "string",
          "format": "cid"
        },
        "record": {
          "type": "unknown"
        },
        "lists": {
          "type": "array",
          "items": {
            "type": "ref",
            "ref": "app.bsky.graph.defs#listViewBasic"
          }
        }
      }
    },
    "interaction": {
      "type": "object",
      "properties": {
        "item": {
          "type": "string",
          "format": "at-uri"
        },
        "event": {
          "type": "string",
          "knownValues": [
            "app.bsky.feed.defs#requestLess",
            "app.bsky.feed.defs#requestMore",
            "app.bsky.feed.defs#clickthroughItem",
            "app.bsky.feed.defs#clickthroughAuthor",
            "app.bsky.feed.defs#clickthroughReposter",
            "app.bsky.feed.defs#clickthroughEmbed",
            "app.bsky.feed.defs#interactionSeen",
            "app.bsky.feed.defs#interactionLike",
            "app.bsky.feed.defs#interactionRepost",
            "app.bsky.feed.defs#interactionReply",
            "app.bsky.feed.defs#interactionQuote",
            "app.bsky.feed.defs#interactionShare"
          ]
        },
        "feedContext": {
          "type": "string",
          "description": "Context on a feed item that was originally supplied by the feed generator on getFeedSkeleton.",
          "maxLength": 2000
        },
        "reqId": {
          "type": "string",
          "description": "Unique identifier per request that may be passed back alongside interactions.",
          "maxLength": 100
        }
      }
    },
    "requestLess": {
      "type": "token",
      "description": "Request that less content like the given feed item be shown in the feed"
    },
    "requestMore": {
      "type": "token",
      "description": "Request that more content like the given feed item be shown in the feed"
    },
    "clickthroughItem": {
      "type": "token",
      "description": "User clicked through to the feed item"
    },
    "clickthroughAuthor": {
      "type": "token",
      "description": "User clicked through to the author of the feed item"
    },
    "clickthroughReposter": {
      "type": "token",
      "description": "User clicked through to the reposter of the feed item"
    },
    "clickthroughEmbed": {
      "type": "token",
      "description": "User clicked through to the embedded content of the feed item"
    },
    "contentModeUnspecified": {
      "type": "token",
      "description": "Declares the feed generator returns any types of posts."
    },
    "contentModeVideo": {
      "type": "token",
      "description": "Declares the feed generator returns posts containing app.bsky.embed.video embeds."
    },
    "interactionSeen": {
      "type": "token",
      "description": "Feed item was seen by user"
    },
    "interactionLike": {
      "type": "token",
      "description": "User liked the feed item"
    },
    "interactionRepost": {
      "type": "token",
      "description": "User reposted the feed item"
    },
    "interactionReply": {
      "type": "token",
      "description": "User replied to the feed item"
    },
    "interactionQuote": {
      "type": "token",
      "description": "User quoted the feed item"
    },
    "interactionShare": {
      "type": "token",
      "description": "User shared the feed item"
    }
  }
}
```
