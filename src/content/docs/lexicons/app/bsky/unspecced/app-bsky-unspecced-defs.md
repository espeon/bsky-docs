---
title: app.bsky.unspecced.defs
description: Reference for the app.bsky.unspecced.defs lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="skeletonsearchpost"></a>
### `skeletonSearchPost`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `uri` | `string` | ✅  |  | Format: `at-uri` |

---

<a name="skeletonsearchactor"></a>
### `skeletonSearchActor`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `did` | `string` | ✅  |  | Format: `did` |

---

<a name="skeletonsearchstarterpack"></a>
### `skeletonSearchStarterPack`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `uri` | `string` | ✅  |  | Format: `at-uri` |

---

<a name="trendingtopic"></a>
### `trendingTopic`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `topic` | `string` | ✅  |  |  |
| `displayName` | `string` | ❌  |  |  |
| `description` | `string` | ❌  |  |  |
| `link` | `string` | ✅  |  |  |

---

<a name="skeletontrend"></a>
### `skeletonTrend`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `topic` | `string` | ✅  |  |  |
| `displayName` | `string` | ✅  |  |  |
| `link` | `string` | ✅  |  |  |
| `startedAt` | `string` | ✅  |  | Format: `datetime` |
| `postCount` | `integer` | ✅  |  |  |
| `status` | `string` | ❌  |  | Known Values: `hot` |
| `category` | `string` | ❌  |  |  |
| `dids` | Array of `string` | ✅  |  |  |

---

<a name="trendview"></a>
### `trendView`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `topic` | `string` | ✅  |  |  |
| `displayName` | `string` | ✅  |  |  |
| `link` | `string` | ✅  |  |  |
| `startedAt` | `string` | ✅  |  | Format: `datetime` |
| `postCount` | `integer` | ✅  |  |  |
| `status` | `string` | ❌  |  | Known Values: `hot` |
| `category` | `string` | ❌  |  |  |
| `actors` | Array of [`app.bsky.actor.defs#profileViewBasic`](lexicons/app/bsky/actor/defs#profileViewBasic) | ✅  |  |  |

---

<a name="threaditempost"></a>
### `threadItemPost`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `post` | [`app.bsky.feed.defs#postView`](lexicons/app/bsky/feed/defs#postView) | ✅  |  |  |
| `moreParents` | `boolean` | ✅  | This post has more parents that were not present in the response. This is just a boolean, without the number of parents. |  |
| `moreReplies` | `integer` | ✅  | This post has more replies that were not present in the response. This is a numeric value, which is best-effort and might not be accurate. |  |
| `opThread` | `boolean` | ✅  | This post is part of a contiguous thread by the OP from the thread root. Many different OP threads can happen in the same thread. |  |
| `hiddenByThreadgate` | `boolean` | ✅  | The threadgate created by the author indicates this post as a reply to be hidden for everyone consuming the thread. |  |
| `mutedByViewer` | `boolean` | ✅  | This is by an account muted by the viewer requesting it. |  |

---

<a name="threaditemnounauthenticated"></a>
### `threadItemNoUnauthenticated`

**Type:** `object`

**Properties:**

_(No properties defined)_

---

<a name="threaditemnotfound"></a>
### `threadItemNotFound`

**Type:** `object`

**Properties:**

_(No properties defined)_

---

<a name="threaditemblocked"></a>
### `threadItemBlocked`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `author` | [`app.bsky.feed.defs#blockedAuthor`](lexicons/app/bsky/feed/defs#blockedAuthor) | ✅  |  |  |

---

<a name="ageassurancestate"></a>
### `ageAssuranceState`

**Type:** `object`

The computed state of the age assurance process, returned to the user in question on certain authenticated requests.

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `lastInitiatedAt` | `string` | ❌  | The timestamp when this state was last updated. | Format: `datetime` |
| `status` | `string` | ✅  | The status of the age assurance process. | Known Values: `unknown`, `pending`, `assured`, `blocked` |

---

<a name="ageassuranceevent"></a>
### `ageAssuranceEvent`

**Type:** `object`

Object used to store age assurance data in stash.

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `createdAt` | `string` | ✅  | The date and time of this write operation. | Format: `datetime` |
| `status` | `string` | ✅  | The status of the age assurance process. | Known Values: `unknown`, `pending`, `assured` |
| `attemptId` | `string` | ✅  | The unique identifier for this instance of the age assurance flow, in UUID format. |  |
| `email` | `string` | ❌  | The email used for AA. |  |
| `initIp` | `string` | ❌  | The IP address used when initiating the AA flow. |  |
| `initUa` | `string` | ❌  | The user agent used when initiating the AA flow. |  |
| `completeIp` | `string` | ❌  | The IP address used when completing the AA flow. |  |
| `completeUa` | `string` | ❌  | The user agent used when completing the AA flow. |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.unspecced.defs",
  "defs": {
    "skeletonSearchPost": {
      "type": "object",
      "required": [
        "uri"
      ],
      "properties": {
        "uri": {
          "type": "string",
          "format": "at-uri"
        }
      }
    },
    "skeletonSearchActor": {
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
    "skeletonSearchStarterPack": {
      "type": "object",
      "required": [
        "uri"
      ],
      "properties": {
        "uri": {
          "type": "string",
          "format": "at-uri"
        }
      }
    },
    "trendingTopic": {
      "type": "object",
      "required": [
        "topic",
        "link"
      ],
      "properties": {
        "topic": {
          "type": "string"
        },
        "displayName": {
          "type": "string"
        },
        "description": {
          "type": "string"
        },
        "link": {
          "type": "string"
        }
      }
    },
    "skeletonTrend": {
      "type": "object",
      "required": [
        "topic",
        "displayName",
        "link",
        "startedAt",
        "postCount",
        "dids"
      ],
      "properties": {
        "topic": {
          "type": "string"
        },
        "displayName": {
          "type": "string"
        },
        "link": {
          "type": "string"
        },
        "startedAt": {
          "type": "string",
          "format": "datetime"
        },
        "postCount": {
          "type": "integer"
        },
        "status": {
          "type": "string",
          "knownValues": [
            "hot"
          ]
        },
        "category": {
          "type": "string"
        },
        "dids": {
          "type": "array",
          "items": {
            "type": "string",
            "format": "did"
          }
        }
      }
    },
    "trendView": {
      "type": "object",
      "required": [
        "topic",
        "displayName",
        "link",
        "startedAt",
        "postCount",
        "actors"
      ],
      "properties": {
        "topic": {
          "type": "string"
        },
        "displayName": {
          "type": "string"
        },
        "link": {
          "type": "string"
        },
        "startedAt": {
          "type": "string",
          "format": "datetime"
        },
        "postCount": {
          "type": "integer"
        },
        "status": {
          "type": "string",
          "knownValues": [
            "hot"
          ]
        },
        "category": {
          "type": "string"
        },
        "actors": {
          "type": "array",
          "items": {
            "type": "ref",
            "ref": "app.bsky.actor.defs#profileViewBasic"
          }
        }
      }
    },
    "threadItemPost": {
      "type": "object",
      "required": [
        "post",
        "moreParents",
        "moreReplies",
        "opThread",
        "hiddenByThreadgate",
        "mutedByViewer"
      ],
      "properties": {
        "post": {
          "type": "ref",
          "ref": "app.bsky.feed.defs#postView"
        },
        "moreParents": {
          "type": "boolean",
          "description": "This post has more parents that were not present in the response. This is just a boolean, without the number of parents."
        },
        "moreReplies": {
          "type": "integer",
          "description": "This post has more replies that were not present in the response. This is a numeric value, which is best-effort and might not be accurate."
        },
        "opThread": {
          "type": "boolean",
          "description": "This post is part of a contiguous thread by the OP from the thread root. Many different OP threads can happen in the same thread."
        },
        "hiddenByThreadgate": {
          "type": "boolean",
          "description": "The threadgate created by the author indicates this post as a reply to be hidden for everyone consuming the thread."
        },
        "mutedByViewer": {
          "type": "boolean",
          "description": "This is by an account muted by the viewer requesting it."
        }
      }
    },
    "threadItemNoUnauthenticated": {
      "type": "object",
      "properties": {}
    },
    "threadItemNotFound": {
      "type": "object",
      "properties": {}
    },
    "threadItemBlocked": {
      "type": "object",
      "required": [
        "author"
      ],
      "properties": {
        "author": {
          "type": "ref",
          "ref": "app.bsky.feed.defs#blockedAuthor"
        }
      }
    },
    "ageAssuranceState": {
      "type": "object",
      "description": "The computed state of the age assurance process, returned to the user in question on certain authenticated requests.",
      "required": [
        "status"
      ],
      "properties": {
        "lastInitiatedAt": {
          "type": "string",
          "format": "datetime",
          "description": "The timestamp when this state was last updated."
        },
        "status": {
          "type": "string",
          "description": "The status of the age assurance process.",
          "knownValues": [
            "unknown",
            "pending",
            "assured",
            "blocked"
          ]
        }
      }
    },
    "ageAssuranceEvent": {
      "type": "object",
      "description": "Object used to store age assurance data in stash.",
      "required": [
        "createdAt",
        "status",
        "attemptId"
      ],
      "properties": {
        "createdAt": {
          "type": "string",
          "format": "datetime",
          "description": "The date and time of this write operation."
        },
        "status": {
          "type": "string",
          "description": "The status of the age assurance process.",
          "knownValues": [
            "unknown",
            "pending",
            "assured"
          ]
        },
        "attemptId": {
          "type": "string",
          "description": "The unique identifier for this instance of the age assurance flow, in UUID format."
        },
        "email": {
          "type": "string",
          "description": "The email used for AA."
        },
        "initIp": {
          "type": "string",
          "description": "The IP address used when initiating the AA flow."
        },
        "initUa": {
          "type": "string",
          "description": "The user agent used when initiating the AA flow."
        },
        "completeIp": {
          "type": "string",
          "description": "The IP address used when completing the AA flow."
        },
        "completeUa": {
          "type": "string",
          "description": "The user agent used when completing the AA flow."
        }
      }
    }
  }
}
```
