---
title: app.bsky.actor.defs
description: Reference for the app.bsky.actor.defs lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="profileviewbasic"></a>
### `profileViewBasic`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `did` | `string` | ✅  |  | Format: `did` |
| `handle` | `string` | ✅  |  | Format: `handle` |
| `displayName` | `string` | ❌  |  | Max Length: 640<br/>Max Graphemes: 64 |
| `pronouns` | `string` | ❌  |  |  |
| `avatar` | `string` | ❌  |  | Format: `uri` |
| `associated` | [`#profileAssociated`](#profileassociated) | ❌  |  |  |
| `viewer` | [`#viewerState`](#viewerstate) | ❌  |  |  |
| `labels` | Array of [`com.atproto.label.defs#label`](lexicons/com/atproto/label/defs#label) | ❌  |  |  |
| `createdAt` | `string` | ❌  |  | Format: `datetime` |
| `verification` | [`#verificationState`](#verificationstate) | ❌  |  |  |
| `status` | [`#statusView`](#statusview) | ❌  |  |  |

---

<a name="profileview"></a>
### `profileView`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `did` | `string` | ✅  |  | Format: `did` |
| `handle` | `string` | ✅  |  | Format: `handle` |
| `displayName` | `string` | ❌  |  | Max Length: 640<br/>Max Graphemes: 64 |
| `pronouns` | `string` | ❌  |  |  |
| `description` | `string` | ❌  |  | Max Length: 2560<br/>Max Graphemes: 256 |
| `avatar` | `string` | ❌  |  | Format: `uri` |
| `associated` | [`#profileAssociated`](#profileassociated) | ❌  |  |  |
| `indexedAt` | `string` | ❌  |  | Format: `datetime` |
| `createdAt` | `string` | ❌  |  | Format: `datetime` |
| `viewer` | [`#viewerState`](#viewerstate) | ❌  |  |  |
| `labels` | Array of [`com.atproto.label.defs#label`](lexicons/com/atproto/label/defs#label) | ❌  |  |  |
| `verification` | [`#verificationState`](#verificationstate) | ❌  |  |  |
| `status` | [`#statusView`](#statusview) | ❌  |  |  |

---

<a name="profileviewdetailed"></a>
### `profileViewDetailed`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `did` | `string` | ✅  |  | Format: `did` |
| `handle` | `string` | ✅  |  | Format: `handle` |
| `displayName` | `string` | ❌  |  | Max Length: 640<br/>Max Graphemes: 64 |
| `description` | `string` | ❌  |  | Max Length: 2560<br/>Max Graphemes: 256 |
| `pronouns` | `string` | ❌  |  |  |
| `website` | `string` | ❌  |  | Format: `uri` |
| `avatar` | `string` | ❌  |  | Format: `uri` |
| `banner` | `string` | ❌  |  | Format: `uri` |
| `followersCount` | `integer` | ❌  |  |  |
| `followsCount` | `integer` | ❌  |  |  |
| `postsCount` | `integer` | ❌  |  |  |
| `associated` | [`#profileAssociated`](#profileassociated) | ❌  |  |  |
| `joinedViaStarterPack` | [`app.bsky.graph.defs#starterPackViewBasic`](lexicons/app/bsky/graph/defs#starterPackViewBasic) | ❌  |  |  |
| `indexedAt` | `string` | ❌  |  | Format: `datetime` |
| `createdAt` | `string` | ❌  |  | Format: `datetime` |
| `viewer` | [`#viewerState`](#viewerstate) | ❌  |  |  |
| `labels` | Array of [`com.atproto.label.defs#label`](lexicons/com/atproto/label/defs#label) | ❌  |  |  |
| `pinnedPost` | [`com.atproto.repo.strongRef`](lexicons/com/atproto/repo/strongref#undefined) | ❌  |  |  |
| `verification` | [`#verificationState`](#verificationstate) | ❌  |  |  |
| `status` | [`#statusView`](#statusview) | ❌  |  |  |

---

<a name="profileassociated"></a>
### `profileAssociated`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `lists` | `integer` | ❌  |  |  |
| `feedgens` | `integer` | ❌  |  |  |
| `starterPacks` | `integer` | ❌  |  |  |
| `labeler` | `boolean` | ❌  |  |  |
| `chat` | [`#profileAssociatedChat`](#profileassociatedchat) | ❌  |  |  |
| `activitySubscription` | [`#profileAssociatedActivitySubscription`](#profileassociatedactivitysubscription) | ❌  |  |  |

---

<a name="profileassociatedchat"></a>
### `profileAssociatedChat`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `allowIncoming` | `string` | ✅  |  | Known Values: `all`, `none`, `following` |

---

<a name="profileassociatedactivitysubscription"></a>
### `profileAssociatedActivitySubscription`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `allowSubscriptions` | `string` | ✅  |  | Known Values: `followers`, `mutuals`, `none` |

---

<a name="viewerstate"></a>
### `viewerState`

**Type:** `object`

Metadata about the requesting account's relationship with the subject account. Only has meaningful content for authed requests.

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `muted` | `boolean` | ❌  |  |  |
| `mutedByList` | [`app.bsky.graph.defs#listViewBasic`](lexicons/app/bsky/graph/defs#listViewBasic) | ❌  |  |  |
| `blockedBy` | `boolean` | ❌  |  |  |
| `blocking` | `string` | ❌  |  | Format: `at-uri` |
| `blockingByList` | [`app.bsky.graph.defs#listViewBasic`](lexicons/app/bsky/graph/defs#listViewBasic) | ❌  |  |  |
| `following` | `string` | ❌  |  | Format: `at-uri` |
| `followedBy` | `string` | ❌  |  | Format: `at-uri` |
| `knownFollowers` | [`#knownFollowers`](#knownfollowers) | ❌  | This property is present only in selected cases, as an optimization. |  |
| `activitySubscription` | [`app.bsky.notification.defs#activitySubscription`](lexicons/app/bsky/notification/defs#activitySubscription) | ❌  | This property is present only in selected cases, as an optimization. |  |

---

<a name="knownfollowers"></a>
### `knownFollowers`

**Type:** `object`

The subject's followers whom you also follow

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `count` | `integer` | ✅  |  |  |
| `followers` | Array of [`#profileViewBasic`](#profileviewbasic) | ✅  |  | Min Items: 0<br/>Max Items: 5 |

---

<a name="verificationstate"></a>
### `verificationState`

**Type:** `object`

Represents the verification information about the user this object is attached to.

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `verifications` | Array of [`#verificationView`](#verificationview) | ✅  | All verifications issued by trusted verifiers on behalf of this user. Verifications by untrusted verifiers are not included. |  |
| `verifiedStatus` | `string` | ✅  | The user's status as a verified account. | Known Values: `valid`, `invalid`, `none` |
| `trustedVerifierStatus` | `string` | ✅  | The user's status as a trusted verifier. | Known Values: `valid`, `invalid`, `none` |

---

<a name="verificationview"></a>
### `verificationView`

**Type:** `object`

An individual verification for an associated subject.

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `issuer` | `string` | ✅  | The user who issued this verification. | Format: `did` |
| `uri` | `string` | ✅  | The AT-URI of the verification record. | Format: `at-uri` |
| `isValid` | `boolean` | ✅  | True if the verification passes validation, otherwise false. |  |
| `createdAt` | `string` | ✅  | Timestamp when the verification was created. | Format: `datetime` |

---

<a name="preferences"></a>
### `preferences`

**Type:** `array`

**Items Type:** Union of:<br/>&nbsp;&nbsp;[`#adultContentPref`](#adultcontentpref)<br/>&nbsp;&nbsp;[`#contentLabelPref`](#contentlabelpref)<br/>&nbsp;&nbsp;[`#savedFeedsPref`](#savedfeedspref)<br/>&nbsp;&nbsp;[`#savedFeedsPrefV2`](#savedfeedsprefv2)<br/>&nbsp;&nbsp;[`#personalDetailsPref`](#personaldetailspref)<br/>&nbsp;&nbsp;[`#feedViewPref`](#feedviewpref)<br/>&nbsp;&nbsp;[`#threadViewPref`](#threadviewpref)<br/>&nbsp;&nbsp;[`#interestsPref`](#interestspref)<br/>&nbsp;&nbsp;[`#mutedWordsPref`](#mutedwordspref)<br/>&nbsp;&nbsp;[`#hiddenPostsPref`](#hiddenpostspref)<br/>&nbsp;&nbsp;[`#bskyAppStatePref`](#bskyappstatepref)<br/>&nbsp;&nbsp;[`#labelersPref`](#labelerspref)<br/>&nbsp;&nbsp;[`#postInteractionSettingsPref`](#postinteractionsettingspref)<br/>&nbsp;&nbsp;[`#verificationPrefs`](#verificationprefs)


---

<a name="adultcontentpref"></a>
### `adultContentPref`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `enabled` | `boolean` | ✅  |  | Default: `false` |

---

<a name="contentlabelpref"></a>
### `contentLabelPref`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `labelerDid` | `string` | ❌  | Which labeler does this preference apply to? If undefined, applies globally. | Format: `did` |
| `label` | `string` | ✅  |  |  |
| `visibility` | `string` | ✅  |  | Known Values: `ignore`, `show`, `warn`, `hide` |

---

<a name="savedfeed"></a>
### `savedFeed`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `id` | `string` | ✅  |  |  |
| `type` | `string` | ✅  |  | Known Values: `feed`, `list`, `timeline` |
| `value` | `string` | ✅  |  |  |
| `pinned` | `boolean` | ✅  |  |  |

---

<a name="savedfeedsprefv2"></a>
### `savedFeedsPrefV2`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `items` | Array of [`app.bsky.actor.defs#savedFeed`](lexicons/app/bsky/actor/defs#savedFeed) | ✅  |  |  |

---

<a name="savedfeedspref"></a>
### `savedFeedsPref`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `pinned` | Array of `string` | ✅  |  |  |
| `saved` | Array of `string` | ✅  |  |  |
| `timelineIndex` | `integer` | ❌  |  |  |

---

<a name="personaldetailspref"></a>
### `personalDetailsPref`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `birthDate` | `string` | ❌  | The birth date of account owner. | Format: `datetime` |

---

<a name="feedviewpref"></a>
### `feedViewPref`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `feed` | `string` | ✅  | The URI of the feed, or an identifier which describes the feed. |  |
| `hideReplies` | `boolean` | ❌  | Hide replies in the feed. |  |
| `hideRepliesByUnfollowed` | `boolean` | ❌  | Hide replies in the feed if they are not by followed users. | Default: `true` |
| `hideRepliesByLikeCount` | `integer` | ❌  | Hide replies in the feed if they do not have this number of likes. |  |
| `hideReposts` | `boolean` | ❌  | Hide reposts in the feed. |  |
| `hideQuotePosts` | `boolean` | ❌  | Hide quote posts in the feed. |  |

---

<a name="threadviewpref"></a>
### `threadViewPref`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `sort` | `string` | ❌  | Sorting mode for threads. | Known Values: `oldest`, `newest`, `most-likes`, `random`, `hotness` |
| `prioritizeFollowedUsers` | `boolean` | ❌  | Show followed users at the top of all replies. |  |

---

<a name="interestspref"></a>
### `interestsPref`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `tags` | Array of `string` | ✅  | A list of tags which describe the account owner's interests gathered during onboarding. | Max Items: 100 |

---

<a name="mutedwordtarget"></a>
### `mutedWordTarget`

**Type:** `string`

**Constraints:**<br/>Max Length: 640<br/>Max Graphemes: 64<br/>Known Values: `content`, `tag`


---

<a name="mutedword"></a>
### `mutedWord`

**Type:** `object`

A word that the account owner has muted.

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `id` | `string` | ❌  |  |  |
| `value` | `string` | ✅  | The muted word itself. | Max Length: 10000<br/>Max Graphemes: 1000 |
| `targets` | Array of [`app.bsky.actor.defs#mutedWordTarget`](lexicons/app/bsky/actor/defs#mutedWordTarget) | ✅  | The intended targets of the muted word. |  |
| `actorTarget` | `string` | ❌  | Groups of users to apply the muted word to. If undefined, applies to all users. | Known Values: `all`, `exclude-following`<br/>Default: `all` |
| `expiresAt` | `string` | ❌  | The date and time at which the muted word will expire and no longer be applied. | Format: `datetime` |

---

<a name="mutedwordspref"></a>
### `mutedWordsPref`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `items` | Array of [`app.bsky.actor.defs#mutedWord`](lexicons/app/bsky/actor/defs#mutedWord) | ✅  | A list of words the account owner has muted. |  |

---

<a name="hiddenpostspref"></a>
### `hiddenPostsPref`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `items` | Array of `string` | ✅  | A list of URIs of posts the account owner has hidden. |  |

---

<a name="labelerspref"></a>
### `labelersPref`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `labelers` | Array of [`#labelerPrefItem`](#labelerprefitem) | ✅  |  |  |

---

<a name="labelerprefitem"></a>
### `labelerPrefItem`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `did` | `string` | ✅  |  | Format: `did` |

---

<a name="bskyappstatepref"></a>
### `bskyAppStatePref`

**Type:** `object`

A grab bag of state that's specific to the bsky.app program. Third-party apps shouldn't use this.

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `activeProgressGuide` | [`#bskyAppProgressGuide`](#bskyappprogressguide) | ❌  |  |  |
| `queuedNudges` | Array of `string` | ❌  | An array of tokens which identify nudges (modals, popups, tours, highlight dots) that should be shown to the user. | Max Items: 1000 |
| `nuxs` | Array of [`app.bsky.actor.defs#nux`](lexicons/app/bsky/actor/defs#nux) | ❌  | Storage for NUXs the user has encountered. | Max Items: 100 |

---

<a name="bskyappprogressguide"></a>
### `bskyAppProgressGuide`

**Type:** `object`

If set, an active progress guide. Once completed, can be set to undefined. Should have unspecced fields tracking progress.

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `guide` | `string` | ✅  |  | Max Length: 100 |

---

<a name="nux"></a>
### `nux`

**Type:** `object`

A new user experiences (NUX) storage object

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `id` | `string` | ✅  |  | Max Length: 100 |
| `completed` | `boolean` | ✅  |  | Default: `false` |
| `data` | `string` | ❌  | Arbitrary data for the NUX. The structure is defined by the NUX itself. Limited to 300 characters. | Max Length: 3000<br/>Max Graphemes: 300 |
| `expiresAt` | `string` | ❌  | The date and time at which the NUX will expire and should be considered completed. | Format: `datetime` |

---

<a name="verificationprefs"></a>
### `verificationPrefs`

**Type:** `object`

Preferences for how verified accounts appear in the app.

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `hideBadges` | `boolean` | ❌  | Hide the blue check badges for verified accounts and trusted verifiers. | Default: `false` |

---

<a name="postinteractionsettingspref"></a>
### `postInteractionSettingsPref`

**Type:** `object`

Default post interaction settings for the account. These values should be applied as default values when creating new posts. These refs should mirror the threadgate and postgate records exactly.

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `threadgateAllowRules` | Array of Union of:<br/>&nbsp;&nbsp;[`app.bsky.feed.threadgate#mentionRule`](lexicons/app/bsky/feed/threadgate#mentionRule)<br/>&nbsp;&nbsp;[`app.bsky.feed.threadgate#followerRule`](lexicons/app/bsky/feed/threadgate#followerRule)<br/>&nbsp;&nbsp;[`app.bsky.feed.threadgate#followingRule`](lexicons/app/bsky/feed/threadgate#followingRule)<br/>&nbsp;&nbsp;[`app.bsky.feed.threadgate#listRule`](lexicons/app/bsky/feed/threadgate#listRule) | ❌  | Matches threadgate record. List of rules defining who can reply to this users posts. If value is an empty array, no one can reply. If value is undefined, anyone can reply. | Max Items: 5 |
| `postgateEmbeddingRules` | Array of Union of:<br/>&nbsp;&nbsp;[`app.bsky.feed.postgate#disableRule`](lexicons/app/bsky/feed/postgate#disableRule) | ❌  | Matches postgate record. List of rules defining who can embed this users posts. If value is an empty array or is undefined, no particular rules apply and anyone can embed. | Max Items: 5 |

---

<a name="statusview"></a>
### `statusView`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `status` | `string` | ✅  | The status for the account. | Known Values: `app.bsky.actor.status#live` |
| `record` | `unknown` | ✅  |  |  |
| `embed` | Union of:<br/>&nbsp;&nbsp;[`app.bsky.embed.external#view`](lexicons/app/bsky/embed/external#view) | ❌  | An optional embed associated with the status. |  |
| `expiresAt` | `string` | ❌  | The date when this status will expire. The application might choose to no longer return the status after expiration. | Format: `datetime` |
| `isActive` | `boolean` | ❌  | True if the status is not expired, false if it is expired. Only present if expiration was set. |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.actor.defs",
  "defs": {
    "profileViewBasic": {
      "type": "object",
      "required": [
        "did",
        "handle"
      ],
      "properties": {
        "did": {
          "type": "string",
          "format": "did"
        },
        "handle": {
          "type": "string",
          "format": "handle"
        },
        "displayName": {
          "type": "string",
          "maxGraphemes": 64,
          "maxLength": 640
        },
        "pronouns": {
          "type": "string"
        },
        "avatar": {
          "type": "string",
          "format": "uri"
        },
        "associated": {
          "type": "ref",
          "ref": "#profileAssociated"
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
        "createdAt": {
          "type": "string",
          "format": "datetime"
        },
        "verification": {
          "type": "ref",
          "ref": "#verificationState"
        },
        "status": {
          "type": "ref",
          "ref": "#statusView"
        }
      }
    },
    "profileView": {
      "type": "object",
      "required": [
        "did",
        "handle"
      ],
      "properties": {
        "did": {
          "type": "string",
          "format": "did"
        },
        "handle": {
          "type": "string",
          "format": "handle"
        },
        "displayName": {
          "type": "string",
          "maxGraphemes": 64,
          "maxLength": 640
        },
        "pronouns": {
          "type": "string"
        },
        "description": {
          "type": "string",
          "maxGraphemes": 256,
          "maxLength": 2560
        },
        "avatar": {
          "type": "string",
          "format": "uri"
        },
        "associated": {
          "type": "ref",
          "ref": "#profileAssociated"
        },
        "indexedAt": {
          "type": "string",
          "format": "datetime"
        },
        "createdAt": {
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
        "verification": {
          "type": "ref",
          "ref": "#verificationState"
        },
        "status": {
          "type": "ref",
          "ref": "#statusView"
        }
      }
    },
    "profileViewDetailed": {
      "type": "object",
      "required": [
        "did",
        "handle"
      ],
      "properties": {
        "did": {
          "type": "string",
          "format": "did"
        },
        "handle": {
          "type": "string",
          "format": "handle"
        },
        "displayName": {
          "type": "string",
          "maxGraphemes": 64,
          "maxLength": 640
        },
        "description": {
          "type": "string",
          "maxGraphemes": 256,
          "maxLength": 2560
        },
        "pronouns": {
          "type": "string"
        },
        "website": {
          "type": "string",
          "format": "uri"
        },
        "avatar": {
          "type": "string",
          "format": "uri"
        },
        "banner": {
          "type": "string",
          "format": "uri"
        },
        "followersCount": {
          "type": "integer"
        },
        "followsCount": {
          "type": "integer"
        },
        "postsCount": {
          "type": "integer"
        },
        "associated": {
          "type": "ref",
          "ref": "#profileAssociated"
        },
        "joinedViaStarterPack": {
          "type": "ref",
          "ref": "app.bsky.graph.defs#starterPackViewBasic"
        },
        "indexedAt": {
          "type": "string",
          "format": "datetime"
        },
        "createdAt": {
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
        "pinnedPost": {
          "type": "ref",
          "ref": "com.atproto.repo.strongRef"
        },
        "verification": {
          "type": "ref",
          "ref": "#verificationState"
        },
        "status": {
          "type": "ref",
          "ref": "#statusView"
        }
      }
    },
    "profileAssociated": {
      "type": "object",
      "properties": {
        "lists": {
          "type": "integer"
        },
        "feedgens": {
          "type": "integer"
        },
        "starterPacks": {
          "type": "integer"
        },
        "labeler": {
          "type": "boolean"
        },
        "chat": {
          "type": "ref",
          "ref": "#profileAssociatedChat"
        },
        "activitySubscription": {
          "type": "ref",
          "ref": "#profileAssociatedActivitySubscription"
        }
      }
    },
    "profileAssociatedChat": {
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
    },
    "profileAssociatedActivitySubscription": {
      "type": "object",
      "required": [
        "allowSubscriptions"
      ],
      "properties": {
        "allowSubscriptions": {
          "type": "string",
          "knownValues": [
            "followers",
            "mutuals",
            "none"
          ]
        }
      }
    },
    "viewerState": {
      "type": "object",
      "description": "Metadata about the requesting account's relationship with the subject account. Only has meaningful content for authed requests.",
      "properties": {
        "muted": {
          "type": "boolean"
        },
        "mutedByList": {
          "type": "ref",
          "ref": "app.bsky.graph.defs#listViewBasic"
        },
        "blockedBy": {
          "type": "boolean"
        },
        "blocking": {
          "type": "string",
          "format": "at-uri"
        },
        "blockingByList": {
          "type": "ref",
          "ref": "app.bsky.graph.defs#listViewBasic"
        },
        "following": {
          "type": "string",
          "format": "at-uri"
        },
        "followedBy": {
          "type": "string",
          "format": "at-uri"
        },
        "knownFollowers": {
          "description": "This property is present only in selected cases, as an optimization.",
          "type": "ref",
          "ref": "#knownFollowers"
        },
        "activitySubscription": {
          "description": "This property is present only in selected cases, as an optimization.",
          "type": "ref",
          "ref": "app.bsky.notification.defs#activitySubscription"
        }
      }
    },
    "knownFollowers": {
      "type": "object",
      "description": "The subject's followers whom you also follow",
      "required": [
        "count",
        "followers"
      ],
      "properties": {
        "count": {
          "type": "integer"
        },
        "followers": {
          "type": "array",
          "minLength": 0,
          "maxLength": 5,
          "items": {
            "type": "ref",
            "ref": "#profileViewBasic"
          }
        }
      }
    },
    "verificationState": {
      "type": "object",
      "description": "Represents the verification information about the user this object is attached to.",
      "required": [
        "verifications",
        "verifiedStatus",
        "trustedVerifierStatus"
      ],
      "properties": {
        "verifications": {
          "type": "array",
          "description": "All verifications issued by trusted verifiers on behalf of this user. Verifications by untrusted verifiers are not included.",
          "items": {
            "type": "ref",
            "ref": "#verificationView"
          }
        },
        "verifiedStatus": {
          "type": "string",
          "description": "The user's status as a verified account.",
          "knownValues": [
            "valid",
            "invalid",
            "none"
          ]
        },
        "trustedVerifierStatus": {
          "type": "string",
          "description": "The user's status as a trusted verifier.",
          "knownValues": [
            "valid",
            "invalid",
            "none"
          ]
        }
      }
    },
    "verificationView": {
      "type": "object",
      "description": "An individual verification for an associated subject.",
      "required": [
        "issuer",
        "uri",
        "isValid",
        "createdAt"
      ],
      "properties": {
        "issuer": {
          "type": "string",
          "description": "The user who issued this verification.",
          "format": "did"
        },
        "uri": {
          "type": "string",
          "description": "The AT-URI of the verification record.",
          "format": "at-uri"
        },
        "isValid": {
          "type": "boolean",
          "description": "True if the verification passes validation, otherwise false."
        },
        "createdAt": {
          "type": "string",
          "description": "Timestamp when the verification was created.",
          "format": "datetime"
        }
      }
    },
    "preferences": {
      "type": "array",
      "items": {
        "type": "union",
        "refs": [
          "#adultContentPref",
          "#contentLabelPref",
          "#savedFeedsPref",
          "#savedFeedsPrefV2",
          "#personalDetailsPref",
          "#feedViewPref",
          "#threadViewPref",
          "#interestsPref",
          "#mutedWordsPref",
          "#hiddenPostsPref",
          "#bskyAppStatePref",
          "#labelersPref",
          "#postInteractionSettingsPref",
          "#verificationPrefs"
        ]
      }
    },
    "adultContentPref": {
      "type": "object",
      "required": [
        "enabled"
      ],
      "properties": {
        "enabled": {
          "type": "boolean",
          "default": false
        }
      }
    },
    "contentLabelPref": {
      "type": "object",
      "required": [
        "label",
        "visibility"
      ],
      "properties": {
        "labelerDid": {
          "type": "string",
          "description": "Which labeler does this preference apply to? If undefined, applies globally.",
          "format": "did"
        },
        "label": {
          "type": "string"
        },
        "visibility": {
          "type": "string",
          "knownValues": [
            "ignore",
            "show",
            "warn",
            "hide"
          ]
        }
      }
    },
    "savedFeed": {
      "type": "object",
      "required": [
        "id",
        "type",
        "value",
        "pinned"
      ],
      "properties": {
        "id": {
          "type": "string"
        },
        "type": {
          "type": "string",
          "knownValues": [
            "feed",
            "list",
            "timeline"
          ]
        },
        "value": {
          "type": "string"
        },
        "pinned": {
          "type": "boolean"
        }
      }
    },
    "savedFeedsPrefV2": {
      "type": "object",
      "required": [
        "items"
      ],
      "properties": {
        "items": {
          "type": "array",
          "items": {
            "type": "ref",
            "ref": "app.bsky.actor.defs#savedFeed"
          }
        }
      }
    },
    "savedFeedsPref": {
      "type": "object",
      "required": [
        "pinned",
        "saved"
      ],
      "properties": {
        "pinned": {
          "type": "array",
          "items": {
            "type": "string",
            "format": "at-uri"
          }
        },
        "saved": {
          "type": "array",
          "items": {
            "type": "string",
            "format": "at-uri"
          }
        },
        "timelineIndex": {
          "type": "integer"
        }
      }
    },
    "personalDetailsPref": {
      "type": "object",
      "properties": {
        "birthDate": {
          "type": "string",
          "format": "datetime",
          "description": "The birth date of account owner."
        }
      }
    },
    "feedViewPref": {
      "type": "object",
      "required": [
        "feed"
      ],
      "properties": {
        "feed": {
          "type": "string",
          "description": "The URI of the feed, or an identifier which describes the feed."
        },
        "hideReplies": {
          "type": "boolean",
          "description": "Hide replies in the feed."
        },
        "hideRepliesByUnfollowed": {
          "type": "boolean",
          "description": "Hide replies in the feed if they are not by followed users.",
          "default": true
        },
        "hideRepliesByLikeCount": {
          "type": "integer",
          "description": "Hide replies in the feed if they do not have this number of likes."
        },
        "hideReposts": {
          "type": "boolean",
          "description": "Hide reposts in the feed."
        },
        "hideQuotePosts": {
          "type": "boolean",
          "description": "Hide quote posts in the feed."
        }
      }
    },
    "threadViewPref": {
      "type": "object",
      "properties": {
        "sort": {
          "type": "string",
          "description": "Sorting mode for threads.",
          "knownValues": [
            "oldest",
            "newest",
            "most-likes",
            "random",
            "hotness"
          ]
        },
        "prioritizeFollowedUsers": {
          "type": "boolean",
          "description": "Show followed users at the top of all replies."
        }
      }
    },
    "interestsPref": {
      "type": "object",
      "required": [
        "tags"
      ],
      "properties": {
        "tags": {
          "type": "array",
          "maxLength": 100,
          "items": {
            "type": "string",
            "maxLength": 640,
            "maxGraphemes": 64
          },
          "description": "A list of tags which describe the account owner's interests gathered during onboarding."
        }
      }
    },
    "mutedWordTarget": {
      "type": "string",
      "knownValues": [
        "content",
        "tag"
      ],
      "maxLength": 640,
      "maxGraphemes": 64
    },
    "mutedWord": {
      "type": "object",
      "description": "A word that the account owner has muted.",
      "required": [
        "value",
        "targets"
      ],
      "properties": {
        "id": {
          "type": "string"
        },
        "value": {
          "type": "string",
          "description": "The muted word itself.",
          "maxLength": 10000,
          "maxGraphemes": 1000
        },
        "targets": {
          "type": "array",
          "description": "The intended targets of the muted word.",
          "items": {
            "type": "ref",
            "ref": "app.bsky.actor.defs#mutedWordTarget"
          }
        },
        "actorTarget": {
          "type": "string",
          "description": "Groups of users to apply the muted word to. If undefined, applies to all users.",
          "knownValues": [
            "all",
            "exclude-following"
          ],
          "default": "all"
        },
        "expiresAt": {
          "type": "string",
          "format": "datetime",
          "description": "The date and time at which the muted word will expire and no longer be applied."
        }
      }
    },
    "mutedWordsPref": {
      "type": "object",
      "required": [
        "items"
      ],
      "properties": {
        "items": {
          "type": "array",
          "items": {
            "type": "ref",
            "ref": "app.bsky.actor.defs#mutedWord"
          },
          "description": "A list of words the account owner has muted."
        }
      }
    },
    "hiddenPostsPref": {
      "type": "object",
      "required": [
        "items"
      ],
      "properties": {
        "items": {
          "type": "array",
          "items": {
            "type": "string",
            "format": "at-uri"
          },
          "description": "A list of URIs of posts the account owner has hidden."
        }
      }
    },
    "labelersPref": {
      "type": "object",
      "required": [
        "labelers"
      ],
      "properties": {
        "labelers": {
          "type": "array",
          "items": {
            "type": "ref",
            "ref": "#labelerPrefItem"
          }
        }
      }
    },
    "labelerPrefItem": {
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
    "bskyAppStatePref": {
      "description": "A grab bag of state that's specific to the bsky.app program. Third-party apps shouldn't use this.",
      "type": "object",
      "properties": {
        "activeProgressGuide": {
          "type": "ref",
          "ref": "#bskyAppProgressGuide"
        },
        "queuedNudges": {
          "description": "An array of tokens which identify nudges (modals, popups, tours, highlight dots) that should be shown to the user.",
          "type": "array",
          "maxLength": 1000,
          "items": {
            "type": "string",
            "maxLength": 100
          }
        },
        "nuxs": {
          "description": "Storage for NUXs the user has encountered.",
          "type": "array",
          "maxLength": 100,
          "items": {
            "type": "ref",
            "ref": "app.bsky.actor.defs#nux"
          }
        }
      }
    },
    "bskyAppProgressGuide": {
      "description": "If set, an active progress guide. Once completed, can be set to undefined. Should have unspecced fields tracking progress.",
      "type": "object",
      "required": [
        "guide"
      ],
      "properties": {
        "guide": {
          "type": "string",
          "maxLength": 100
        }
      }
    },
    "nux": {
      "type": "object",
      "description": "A new user experiences (NUX) storage object",
      "required": [
        "id",
        "completed"
      ],
      "properties": {
        "id": {
          "type": "string",
          "maxLength": 100
        },
        "completed": {
          "type": "boolean",
          "default": false
        },
        "data": {
          "description": "Arbitrary data for the NUX. The structure is defined by the NUX itself. Limited to 300 characters.",
          "type": "string",
          "maxLength": 3000,
          "maxGraphemes": 300
        },
        "expiresAt": {
          "type": "string",
          "format": "datetime",
          "description": "The date and time at which the NUX will expire and should be considered completed."
        }
      }
    },
    "verificationPrefs": {
      "type": "object",
      "description": "Preferences for how verified accounts appear in the app.",
      "required": [],
      "properties": {
        "hideBadges": {
          "description": "Hide the blue check badges for verified accounts and trusted verifiers.",
          "type": "boolean",
          "default": false
        }
      }
    },
    "postInteractionSettingsPref": {
      "type": "object",
      "description": "Default post interaction settings for the account. These values should be applied as default values when creating new posts. These refs should mirror the threadgate and postgate records exactly.",
      "required": [],
      "properties": {
        "threadgateAllowRules": {
          "description": "Matches threadgate record. List of rules defining who can reply to this users posts. If value is an empty array, no one can reply. If value is undefined, anyone can reply.",
          "type": "array",
          "maxLength": 5,
          "items": {
            "type": "union",
            "refs": [
              "app.bsky.feed.threadgate#mentionRule",
              "app.bsky.feed.threadgate#followerRule",
              "app.bsky.feed.threadgate#followingRule",
              "app.bsky.feed.threadgate#listRule"
            ]
          }
        },
        "postgateEmbeddingRules": {
          "description": "Matches postgate record. List of rules defining who can embed this users posts. If value is an empty array or is undefined, no particular rules apply and anyone can embed.",
          "type": "array",
          "maxLength": 5,
          "items": {
            "type": "union",
            "refs": [
              "app.bsky.feed.postgate#disableRule"
            ]
          }
        }
      }
    },
    "statusView": {
      "type": "object",
      "required": [
        "status",
        "record"
      ],
      "properties": {
        "status": {
          "type": "string",
          "description": "The status for the account.",
          "knownValues": [
            "app.bsky.actor.status#live"
          ]
        },
        "record": {
          "type": "unknown"
        },
        "embed": {
          "type": "union",
          "description": "An optional embed associated with the status.",
          "refs": [
            "app.bsky.embed.external#view"
          ]
        },
        "expiresAt": {
          "type": "string",
          "description": "The date when this status will expire. The application might choose to no longer return the status after expiration.",
          "format": "datetime"
        },
        "isActive": {
          "type": "boolean",
          "description": "True if the status is not expired, false if it is expired. Only present if expiration was set."
        }
      }
    }
  }
}
```
