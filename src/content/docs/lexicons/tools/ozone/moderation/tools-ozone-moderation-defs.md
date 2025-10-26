---
title: tools.ozone.moderation.defs
description: Reference for the tools.ozone.moderation.defs lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="modeventview"></a>
### `modEventView`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `id` | `integer` | ✅  |  |  |
| `event` | Union of:<br/>&nbsp;&nbsp;[`#modEventTakedown`](#modeventtakedown)<br/>&nbsp;&nbsp;[`#modEventReverseTakedown`](#modeventreversetakedown)<br/>&nbsp;&nbsp;[`#modEventComment`](#modeventcomment)<br/>&nbsp;&nbsp;[`#modEventReport`](#modeventreport)<br/>&nbsp;&nbsp;[`#modEventLabel`](#modeventlabel)<br/>&nbsp;&nbsp;[`#modEventAcknowledge`](#modeventacknowledge)<br/>&nbsp;&nbsp;[`#modEventEscalate`](#modeventescalate)<br/>&nbsp;&nbsp;[`#modEventMute`](#modeventmute)<br/>&nbsp;&nbsp;[`#modEventUnmute`](#modeventunmute)<br/>&nbsp;&nbsp;[`#modEventMuteReporter`](#modeventmutereporter)<br/>&nbsp;&nbsp;[`#modEventUnmuteReporter`](#modeventunmutereporter)<br/>&nbsp;&nbsp;[`#modEventEmail`](#modeventemail)<br/>&nbsp;&nbsp;[`#modEventResolveAppeal`](#modeventresolveappeal)<br/>&nbsp;&nbsp;[`#modEventDivert`](#modeventdivert)<br/>&nbsp;&nbsp;[`#modEventTag`](#modeventtag)<br/>&nbsp;&nbsp;[`#accountEvent`](#accountevent)<br/>&nbsp;&nbsp;[`#identityEvent`](#identityevent)<br/>&nbsp;&nbsp;[`#recordEvent`](#recordevent)<br/>&nbsp;&nbsp;[`#modEventPriorityScore`](#modeventpriorityscore)<br/>&nbsp;&nbsp;[`#ageAssuranceEvent`](#ageassuranceevent)<br/>&nbsp;&nbsp;[`#ageAssuranceOverrideEvent`](#ageassuranceoverrideevent)<br/>&nbsp;&nbsp;[`#revokeAccountCredentialsEvent`](#revokeaccountcredentialsevent)<br/>&nbsp;&nbsp;[`#scheduleTakedownEvent`](#scheduletakedownevent)<br/>&nbsp;&nbsp;[`#cancelScheduledTakedownEvent`](#cancelscheduledtakedownevent) | ✅  |  |  |
| `subject` | Union of:<br/>&nbsp;&nbsp;[`com.atproto.admin.defs#repoRef`](/lexicons/com/atproto/admin/com-atproto-admin-defs#reporef)<br/>&nbsp;&nbsp;[`com.atproto.repo.strongRef`](/lexicons/com/atproto/repo/com-atproto-repo-strongref)<br/>&nbsp;&nbsp;[`chat.bsky.convo.defs#messageRef`](/lexicons/chat/bsky/convo/chat-bsky-convo-defs#messageref) | ✅  |  |  |
| `subjectBlobCids` | Array of `string` | ✅  |  |  |
| `createdBy` | `string` | ✅  |  | Format: `did` |
| `createdAt` | `string` | ✅  |  | Format: `datetime` |
| `creatorHandle` | `string` | ❌  |  |  |
| `subjectHandle` | `string` | ❌  |  |  |
| `modTool` | [`#modTool`](#modtool) | ❌  |  |  |

---

<a name="modeventviewdetail"></a>
### `modEventViewDetail`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `id` | `integer` | ✅  |  |  |
| `event` | Union of:<br/>&nbsp;&nbsp;[`#modEventTakedown`](#modeventtakedown)<br/>&nbsp;&nbsp;[`#modEventReverseTakedown`](#modeventreversetakedown)<br/>&nbsp;&nbsp;[`#modEventComment`](#modeventcomment)<br/>&nbsp;&nbsp;[`#modEventReport`](#modeventreport)<br/>&nbsp;&nbsp;[`#modEventLabel`](#modeventlabel)<br/>&nbsp;&nbsp;[`#modEventAcknowledge`](#modeventacknowledge)<br/>&nbsp;&nbsp;[`#modEventEscalate`](#modeventescalate)<br/>&nbsp;&nbsp;[`#modEventMute`](#modeventmute)<br/>&nbsp;&nbsp;[`#modEventUnmute`](#modeventunmute)<br/>&nbsp;&nbsp;[`#modEventMuteReporter`](#modeventmutereporter)<br/>&nbsp;&nbsp;[`#modEventUnmuteReporter`](#modeventunmutereporter)<br/>&nbsp;&nbsp;[`#modEventEmail`](#modeventemail)<br/>&nbsp;&nbsp;[`#modEventResolveAppeal`](#modeventresolveappeal)<br/>&nbsp;&nbsp;[`#modEventDivert`](#modeventdivert)<br/>&nbsp;&nbsp;[`#modEventTag`](#modeventtag)<br/>&nbsp;&nbsp;[`#accountEvent`](#accountevent)<br/>&nbsp;&nbsp;[`#identityEvent`](#identityevent)<br/>&nbsp;&nbsp;[`#recordEvent`](#recordevent)<br/>&nbsp;&nbsp;[`#modEventPriorityScore`](#modeventpriorityscore)<br/>&nbsp;&nbsp;[`#ageAssuranceEvent`](#ageassuranceevent)<br/>&nbsp;&nbsp;[`#ageAssuranceOverrideEvent`](#ageassuranceoverrideevent)<br/>&nbsp;&nbsp;[`#revokeAccountCredentialsEvent`](#revokeaccountcredentialsevent)<br/>&nbsp;&nbsp;[`#scheduleTakedownEvent`](#scheduletakedownevent)<br/>&nbsp;&nbsp;[`#cancelScheduledTakedownEvent`](#cancelscheduledtakedownevent) | ✅  |  |  |
| `subject` | Union of:<br/>&nbsp;&nbsp;[`#repoView`](#repoview)<br/>&nbsp;&nbsp;[`#repoViewNotFound`](#repoviewnotfound)<br/>&nbsp;&nbsp;[`#recordView`](#recordview)<br/>&nbsp;&nbsp;[`#recordViewNotFound`](#recordviewnotfound) | ✅  |  |  |
| `subjectBlobs` | Array of [`#blobView`](#blobview) | ✅  |  |  |
| `createdBy` | `string` | ✅  |  | Format: `did` |
| `createdAt` | `string` | ✅  |  | Format: `datetime` |
| `modTool` | [`#modTool`](#modtool) | ❌  |  |  |

---

<a name="subjectstatusview"></a>
### `subjectStatusView`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `id` | `integer` | ✅  |  |  |
| `subject` | Union of:<br/>&nbsp;&nbsp;[`com.atproto.admin.defs#repoRef`](/lexicons/com/atproto/admin/com-atproto-admin-defs#reporef)<br/>&nbsp;&nbsp;[`com.atproto.repo.strongRef`](/lexicons/com/atproto/repo/com-atproto-repo-strongref)<br/>&nbsp;&nbsp;[`chat.bsky.convo.defs#messageRef`](/lexicons/chat/bsky/convo/chat-bsky-convo-defs#messageref) | ✅  |  |  |
| `hosting` | Union of:<br/>&nbsp;&nbsp;[`#accountHosting`](#accounthosting)<br/>&nbsp;&nbsp;[`#recordHosting`](#recordhosting) | ❌  |  |  |
| `subjectBlobCids` | Array of `string` | ❌  |  |  |
| `subjectRepoHandle` | `string` | ❌  |  |  |
| `updatedAt` | `string` | ✅  | Timestamp referencing when the last update was made to the moderation status of the subject | Format: `datetime` |
| `createdAt` | `string` | ✅  | Timestamp referencing the first moderation status impacting event was emitted on the subject | Format: `datetime` |
| `reviewState` | [`#subjectReviewState`](#subjectreviewstate) | ✅  |  |  |
| `comment` | `string` | ❌  | Sticky comment on the subject. |  |
| `priorityScore` | `integer` | ❌  | Numeric value representing the level of priority. Higher score means higher priority. | Min: 0<br/>Max: 100 |
| `muteUntil` | `string` | ❌  |  | Format: `datetime` |
| `muteReportingUntil` | `string` | ❌  |  | Format: `datetime` |
| `lastReviewedBy` | `string` | ❌  |  | Format: `did` |
| `lastReviewedAt` | `string` | ❌  |  | Format: `datetime` |
| `lastReportedAt` | `string` | ❌  |  | Format: `datetime` |
| `lastAppealedAt` | `string` | ❌  | Timestamp referencing when the author of the subject appealed a moderation action | Format: `datetime` |
| `takendown` | `boolean` | ❌  |  |  |
| `appealed` | `boolean` | ❌  | True indicates that the a previously taken moderator action was appealed against, by the author of the content. False indicates last appeal was resolved by moderators. |  |
| `suspendUntil` | `string` | ❌  |  | Format: `datetime` |
| `tags` | Array of `string` | ❌  |  |  |
| `accountStats` | [`#accountStats`](#accountstats) | ❌  | Statistics related to the account subject |  |
| `recordsStats` | [`#recordsStats`](#recordsstats) | ❌  | Statistics related to the record subjects authored by the subject's account |  |
| `ageAssuranceState` | `string` | ❌  | Current age assurance state of the subject. | Known Values: `pending`, `assured`, `unknown`, `reset`, `blocked` |
| `ageAssuranceUpdatedBy` | `string` | ❌  | Whether or not the last successful update to age assurance was made by the user or admin. | Known Values: `admin`, `user` |

---

<a name="subjectview"></a>
### `subjectView`

**Type:** `object`

Detailed view of a subject. For record subjects, the author's repo and profile will be returned.

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `type` | [`com.atproto.moderation.defs#subjectType`](/lexicons/com/atproto/moderation/com-atproto-moderation-defs#subjecttype) | ✅  |  |  |
| `subject` | `string` | ✅  |  |  |
| `status` | [`#subjectStatusView`](#subjectstatusview) | ❌  |  |  |
| `repo` | [`#repoViewDetail`](#repoviewdetail) | ❌  |  |  |
| `profile` | Union of:<br/>&nbsp;&nbsp; | ❌  |  |  |
| `record` | [`#recordViewDetail`](#recordviewdetail) | ❌  |  |  |

---

<a name="accountstats"></a>
### `accountStats`

**Type:** `object`

Statistics about a particular account subject

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `reportCount` | `integer` | ❌  | Total number of reports on the account |  |
| `appealCount` | `integer` | ❌  | Total number of appeals against a moderation action on the account |  |
| `suspendCount` | `integer` | ❌  | Number of times the account was suspended |  |
| `escalateCount` | `integer` | ❌  | Number of times the account was escalated |  |
| `takedownCount` | `integer` | ❌  | Number of times the account was taken down |  |

---

<a name="recordsstats"></a>
### `recordsStats`

**Type:** `object`

Statistics about a set of record subject items

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `totalReports` | `integer` | ❌  | Cumulative sum of the number of reports on the items in the set |  |
| `reportedCount` | `integer` | ❌  | Number of items that were reported at least once |  |
| `escalatedCount` | `integer` | ❌  | Number of items that were escalated at least once |  |
| `appealedCount` | `integer` | ❌  | Number of items that were appealed at least once |  |
| `subjectCount` | `integer` | ❌  | Total number of item in the set |  |
| `pendingCount` | `integer` | ❌  | Number of item currently in "reviewOpen" or "reviewEscalated" state |  |
| `processedCount` | `integer` | ❌  | Number of item currently in "reviewNone" or "reviewClosed" state |  |
| `takendownCount` | `integer` | ❌  | Number of item currently taken down |  |

---

<a name="subjectreviewstate"></a>
### `subjectReviewState`

**Type:** `string`

**Constraints:**<br/>Known Values: `#reviewOpen`, `#reviewEscalated`, `#reviewClosed`, `#reviewNone`


---

<a name="reviewopen"></a>
### `reviewOpen`

**Type:** `token`

Moderator review status of a subject: Open. Indicates that the subject needs to be reviewed by a moderator


---

<a name="reviewescalated"></a>
### `reviewEscalated`

**Type:** `token`

Moderator review status of a subject: Escalated. Indicates that the subject was escalated for review by a moderator


---

<a name="reviewclosed"></a>
### `reviewClosed`

**Type:** `token`

Moderator review status of a subject: Closed. Indicates that the subject was already reviewed and resolved by a moderator


---

<a name="reviewnone"></a>
### `reviewNone`

**Type:** `token`

Moderator review status of a subject: Unnecessary. Indicates that the subject does not need a review at the moment but there is probably some moderation related metadata available for it


---

<a name="modeventtakedown"></a>
### `modEventTakedown`

**Type:** `object`

Take down a subject permanently or temporarily

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `comment` | `string` | ❌  |  |  |
| `durationInHours` | `integer` | ❌  | Indicates how long the takedown should be in effect before automatically expiring. |  |
| `acknowledgeAccountSubjects` | `boolean` | ❌  | If true, all other reports on content authored by this account will be resolved (acknowledged). |  |
| `policies` | Array of `string` | ❌  | Names/Keywords of the policies that drove the decision. | Max Items: 5 |

---

<a name="modeventreversetakedown"></a>
### `modEventReverseTakedown`

**Type:** `object`

Revert take down action on a subject

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `comment` | `string` | ❌  | Describe reasoning behind the reversal. |  |

---

<a name="modeventresolveappeal"></a>
### `modEventResolveAppeal`

**Type:** `object`

Resolve appeal on a subject

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `comment` | `string` | ❌  | Describe resolution. |  |

---

<a name="modeventcomment"></a>
### `modEventComment`

**Type:** `object`

Add a comment to a subject. An empty comment will clear any previously set sticky comment.

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `comment` | `string` | ❌  |  |  |
| `sticky` | `boolean` | ❌  | Make the comment persistent on the subject |  |

---

<a name="modeventreport"></a>
### `modEventReport`

**Type:** `object`

Report a subject

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `comment` | `string` | ❌  |  |  |
| `isReporterMuted` | `boolean` | ❌  | Set to true if the reporter was muted from reporting at the time of the event. These reports won't impact the reviewState of the subject. |  |
| `reportType` | [`com.atproto.moderation.defs#reasonType`](/lexicons/com/atproto/moderation/com-atproto-moderation-defs#reasontype) | ✅  |  |  |

---

<a name="modeventlabel"></a>
### `modEventLabel`

**Type:** `object`

Apply/Negate labels on a subject

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `comment` | `string` | ❌  |  |  |
| `createLabelVals` | Array of `string` | ✅  |  |  |
| `negateLabelVals` | Array of `string` | ✅  |  |  |
| `durationInHours` | `integer` | ❌  | Indicates how long the label will remain on the subject. Only applies on labels that are being added. |  |

---

<a name="modeventpriorityscore"></a>
### `modEventPriorityScore`

**Type:** `object`

Set priority score of the subject. Higher score means higher priority.

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `comment` | `string` | ❌  |  |  |
| `score` | `integer` | ✅  |  | Min: 0<br/>Max: 100 |

---

<a name="ageassuranceevent"></a>
### `ageAssuranceEvent`

**Type:** `object`

Age assurance info coming directly from users. Only works on DID subjects.

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `createdAt` | `string` | ✅  | The date and time of this write operation. | Format: `datetime` |
| `status` | `string` | ✅  | The status of the age assurance process. | Known Values: `unknown`, `pending`, `assured` |
| `attemptId` | `string` | ✅  | The unique identifier for this instance of the age assurance flow, in UUID format. |  |
| `initIp` | `string` | ❌  | The IP address used when initiating the AA flow. |  |
| `initUa` | `string` | ❌  | The user agent used when initiating the AA flow. |  |
| `completeIp` | `string` | ❌  | The IP address used when completing the AA flow. |  |
| `completeUa` | `string` | ❌  | The user agent used when completing the AA flow. |  |

---

<a name="ageassuranceoverrideevent"></a>
### `ageAssuranceOverrideEvent`

**Type:** `object`

Age assurance status override by moderators. Only works on DID subjects.

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `status` | `string` | ✅  | The status to be set for the user decided by a moderator, overriding whatever value the user had previously. Use reset to default to original state. | Known Values: `assured`, `reset`, `blocked` |
| `comment` | `string` | ✅  | Comment describing the reason for the override. |  |

---

<a name="revokeaccountcredentialsevent"></a>
### `revokeAccountCredentialsEvent`

**Type:** `object`

Account credentials revocation by moderators. Only works on DID subjects.

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `comment` | `string` | ✅  | Comment describing the reason for the revocation. |  |

---

<a name="modeventacknowledge"></a>
### `modEventAcknowledge`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `comment` | `string` | ❌  |  |  |
| `acknowledgeAccountSubjects` | `boolean` | ❌  | If true, all other reports on content authored by this account will be resolved (acknowledged). |  |

---

<a name="modeventescalate"></a>
### `modEventEscalate`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `comment` | `string` | ❌  |  |  |

---

<a name="modeventmute"></a>
### `modEventMute`

**Type:** `object`

Mute incoming reports on a subject

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `comment` | `string` | ❌  |  |  |
| `durationInHours` | `integer` | ✅  | Indicates how long the subject should remain muted. |  |

---

<a name="modeventunmute"></a>
### `modEventUnmute`

**Type:** `object`

Unmute action on a subject

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `comment` | `string` | ❌  | Describe reasoning behind the reversal. |  |

---

<a name="modeventmutereporter"></a>
### `modEventMuteReporter`

**Type:** `object`

Mute incoming reports from an account

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `comment` | `string` | ❌  |  |  |
| `durationInHours` | `integer` | ❌  | Indicates how long the account should remain muted. Falsy value here means a permanent mute. |  |

---

<a name="modeventunmutereporter"></a>
### `modEventUnmuteReporter`

**Type:** `object`

Unmute incoming reports from an account

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `comment` | `string` | ❌  | Describe reasoning behind the reversal. |  |

---

<a name="modeventemail"></a>
### `modEventEmail`

**Type:** `object`

Keep a log of outgoing email to a user

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `subjectLine` | `string` | ✅  | The subject line of the email sent to the user. |  |
| `content` | `string` | ❌  | The content of the email sent to the user. |  |
| `comment` | `string` | ❌  | Additional comment about the outgoing comm. |  |

---

<a name="modeventdivert"></a>
### `modEventDivert`

**Type:** `object`

Divert a record's blobs to a 3rd party service for further scanning/tagging

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `comment` | `string` | ❌  |  |  |

---

<a name="modeventtag"></a>
### `modEventTag`

**Type:** `object`

Add/Remove a tag on a subject

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `add` | Array of `string` | ✅  | Tags to be added to the subject. If already exists, won't be duplicated. |  |
| `remove` | Array of `string` | ✅  | Tags to be removed to the subject. Ignores a tag If it doesn't exist, won't be duplicated. |  |
| `comment` | `string` | ❌  | Additional comment about added/removed tags. |  |

---

<a name="accountevent"></a>
### `accountEvent`

**Type:** `object`

Logs account status related events on a repo subject. Normally captured by automod from the firehose and emitted to ozone for historical tracking.

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `comment` | `string` | ❌  |  |  |
| `active` | `boolean` | ✅  | Indicates that the account has a repository which can be fetched from the host that emitted this event. |  |
| `status` | `string` | ❌  |  | Known Values: `unknown`, `deactivated`, `deleted`, `takendown`, `suspended`, `tombstoned` |
| `timestamp` | `string` | ✅  |  | Format: `datetime` |

---

<a name="identityevent"></a>
### `identityEvent`

**Type:** `object`

Logs identity related events on a repo subject. Normally captured by automod from the firehose and emitted to ozone for historical tracking.

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `comment` | `string` | ❌  |  |  |
| `handle` | `string` | ❌  |  | Format: `handle` |
| `pdsHost` | `string` | ❌  |  | Format: `uri` |
| `tombstone` | `boolean` | ❌  |  |  |
| `timestamp` | `string` | ✅  |  | Format: `datetime` |

---

<a name="recordevent"></a>
### `recordEvent`

**Type:** `object`

Logs lifecycle event on a record subject. Normally captured by automod from the firehose and emitted to ozone for historical tracking.

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `comment` | `string` | ❌  |  |  |
| `op` | `string` | ✅  |  | Known Values: `create`, `update`, `delete` |
| `cid` | `string` | ❌  |  | Format: `cid` |
| `timestamp` | `string` | ✅  |  | Format: `datetime` |

---

<a name="scheduletakedownevent"></a>
### `scheduleTakedownEvent`

**Type:** `object`

Logs a scheduled takedown action for an account.

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `comment` | `string` | ❌  |  |  |
| `executeAt` | `string` | ❌  |  | Format: `datetime` |
| `executeAfter` | `string` | ❌  |  | Format: `datetime` |
| `executeUntil` | `string` | ❌  |  | Format: `datetime` |

---

<a name="cancelscheduledtakedownevent"></a>
### `cancelScheduledTakedownEvent`

**Type:** `object`

Logs cancellation of a scheduled takedown action for an account.

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `comment` | `string` | ❌  |  |  |

---

<a name="repoview"></a>
### `repoView`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `did` | `string` | ✅  |  | Format: `did` |
| `handle` | `string` | ✅  |  | Format: `handle` |
| `email` | `string` | ❌  |  |  |
| `relatedRecords` | Array of `unknown` | ✅  |  |  |
| `indexedAt` | `string` | ✅  |  | Format: `datetime` |
| `moderation` | [`#moderation`](#moderation) | ✅  |  |  |
| `invitedBy` | [`com.atproto.server.defs#inviteCode`](/lexicons/com/atproto/server/com-atproto-server-defs#invitecode) | ❌  |  |  |
| `invitesDisabled` | `boolean` | ❌  |  |  |
| `inviteNote` | `string` | ❌  |  |  |
| `deactivatedAt` | `string` | ❌  |  | Format: `datetime` |
| `threatSignatures` | Array of [`com.atproto.admin.defs#threatSignature`](/lexicons/com/atproto/admin/com-atproto-admin-defs#threatsignature) | ❌  |  |  |

---

<a name="repoviewdetail"></a>
### `repoViewDetail`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `did` | `string` | ✅  |  | Format: `did` |
| `handle` | `string` | ✅  |  | Format: `handle` |
| `email` | `string` | ❌  |  |  |
| `relatedRecords` | Array of `unknown` | ✅  |  |  |
| `indexedAt` | `string` | ✅  |  | Format: `datetime` |
| `moderation` | [`#moderationDetail`](#moderationdetail) | ✅  |  |  |
| `labels` | Array of [`com.atproto.label.defs#label`](/lexicons/com/atproto/label/com-atproto-label-defs#label) | ❌  |  |  |
| `invitedBy` | [`com.atproto.server.defs#inviteCode`](/lexicons/com/atproto/server/com-atproto-server-defs#invitecode) | ❌  |  |  |
| `invites` | Array of [`com.atproto.server.defs#inviteCode`](/lexicons/com/atproto/server/com-atproto-server-defs#invitecode) | ❌  |  |  |
| `invitesDisabled` | `boolean` | ❌  |  |  |
| `inviteNote` | `string` | ❌  |  |  |
| `emailConfirmedAt` | `string` | ❌  |  | Format: `datetime` |
| `deactivatedAt` | `string` | ❌  |  | Format: `datetime` |
| `threatSignatures` | Array of [`com.atproto.admin.defs#threatSignature`](/lexicons/com/atproto/admin/com-atproto-admin-defs#threatsignature) | ❌  |  |  |

---

<a name="repoviewnotfound"></a>
### `repoViewNotFound`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `did` | `string` | ✅  |  | Format: `did` |

---

<a name="recordview"></a>
### `recordView`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `uri` | `string` | ✅  |  | Format: `at-uri` |
| `cid` | `string` | ✅  |  | Format: `cid` |
| `value` | `unknown` | ✅  |  |  |
| `blobCids` | Array of `string` | ✅  |  |  |
| `indexedAt` | `string` | ✅  |  | Format: `datetime` |
| `moderation` | [`#moderation`](#moderation) | ✅  |  |  |
| `repo` | [`#repoView`](#repoview) | ✅  |  |  |

---

<a name="recordviewdetail"></a>
### `recordViewDetail`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `uri` | `string` | ✅  |  | Format: `at-uri` |
| `cid` | `string` | ✅  |  | Format: `cid` |
| `value` | `unknown` | ✅  |  |  |
| `blobs` | Array of [`#blobView`](#blobview) | ✅  |  |  |
| `labels` | Array of [`com.atproto.label.defs#label`](/lexicons/com/atproto/label/com-atproto-label-defs#label) | ❌  |  |  |
| `indexedAt` | `string` | ✅  |  | Format: `datetime` |
| `moderation` | [`#moderationDetail`](#moderationdetail) | ✅  |  |  |
| `repo` | [`#repoView`](#repoview) | ✅  |  |  |

---

<a name="recordviewnotfound"></a>
### `recordViewNotFound`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `uri` | `string` | ✅  |  | Format: `at-uri` |

---

<a name="moderation"></a>
### `moderation`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `subjectStatus` | [`#subjectStatusView`](#subjectstatusview) | ❌  |  |  |

---

<a name="moderationdetail"></a>
### `moderationDetail`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `subjectStatus` | [`#subjectStatusView`](#subjectstatusview) | ❌  |  |  |

---

<a name="blobview"></a>
### `blobView`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `cid` | `string` | ✅  |  | Format: `cid` |
| `mimeType` | `string` | ✅  |  |  |
| `size` | `integer` | ✅  |  |  |
| `createdAt` | `string` | ✅  |  | Format: `datetime` |
| `details` | Union of:<br/>&nbsp;&nbsp;[`#imageDetails`](#imagedetails)<br/>&nbsp;&nbsp;[`#videoDetails`](#videodetails) | ❌  |  |  |
| `moderation` | [`#moderation`](#moderation) | ❌  |  |  |

---

<a name="imagedetails"></a>
### `imageDetails`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `width` | `integer` | ✅  |  |  |
| `height` | `integer` | ✅  |  |  |

---

<a name="videodetails"></a>
### `videoDetails`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `width` | `integer` | ✅  |  |  |
| `height` | `integer` | ✅  |  |  |
| `length` | `integer` | ✅  |  |  |

---

<a name="accounthosting"></a>
### `accountHosting`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `status` | `string` | ✅  |  | Known Values: `takendown`, `suspended`, `deleted`, `deactivated`, `unknown` |
| `updatedAt` | `string` | ❌  |  | Format: `datetime` |
| `createdAt` | `string` | ❌  |  | Format: `datetime` |
| `deletedAt` | `string` | ❌  |  | Format: `datetime` |
| `deactivatedAt` | `string` | ❌  |  | Format: `datetime` |
| `reactivatedAt` | `string` | ❌  |  | Format: `datetime` |

---

<a name="recordhosting"></a>
### `recordHosting`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `status` | `string` | ✅  |  | Known Values: `deleted`, `unknown` |
| `updatedAt` | `string` | ❌  |  | Format: `datetime` |
| `createdAt` | `string` | ❌  |  | Format: `datetime` |
| `deletedAt` | `string` | ❌  |  | Format: `datetime` |

---

<a name="reporterstats"></a>
### `reporterStats`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `did` | `string` | ✅  |  | Format: `did` |
| `accountReportCount` | `integer` | ✅  | The total number of reports made by the user on accounts. |  |
| `recordReportCount` | `integer` | ✅  | The total number of reports made by the user on records. |  |
| `reportedAccountCount` | `integer` | ✅  | The total number of accounts reported by the user. |  |
| `reportedRecordCount` | `integer` | ✅  | The total number of records reported by the user. |  |
| `takendownAccountCount` | `integer` | ✅  | The total number of accounts taken down as a result of the user's reports. |  |
| `takendownRecordCount` | `integer` | ✅  | The total number of records taken down as a result of the user's reports. |  |
| `labeledAccountCount` | `integer` | ✅  | The total number of accounts labeled as a result of the user's reports. |  |
| `labeledRecordCount` | `integer` | ✅  | The total number of records labeled as a result of the user's reports. |  |

---

<a name="modtool"></a>
### `modTool`

**Type:** `object`

Moderation tool information for tracing the source of the action

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `name` | `string` | ✅  | Name/identifier of the source (e.g., 'automod', 'ozone/workspace') |  |
| `meta` | `unknown` | ❌  | Additional arbitrary metadata about the source |  |

---

<a name="timelineeventplccreate"></a>
### `timelineEventPlcCreate`

**Type:** `token`

Moderation event timeline event for a PLC create operation


---

<a name="timelineeventplcoperation"></a>
### `timelineEventPlcOperation`

**Type:** `token`

Moderation event timeline event for generic PLC operation


---

<a name="timelineeventplctombstone"></a>
### `timelineEventPlcTombstone`

**Type:** `token`

Moderation event timeline event for a PLC tombstone operation


---

<a name="scheduledactionview"></a>
### `scheduledActionView`

**Type:** `object`

View of a scheduled moderation action

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `id` | `integer` | ✅  | Auto-incrementing row ID |  |
| `action` | `string` | ✅  | Type of action to be executed | Known Values: `takedown` |
| `eventData` | `unknown` | ❌  | Serialized event object that will be propagated to the event when performed |  |
| `did` | `string` | ✅  | Subject DID for the action | Format: `did` |
| `executeAt` | `string` | ❌  | Exact time to execute the action | Format: `datetime` |
| `executeAfter` | `string` | ❌  | Earliest time to execute the action (for randomized scheduling) | Format: `datetime` |
| `executeUntil` | `string` | ❌  | Latest time to execute the action (for randomized scheduling) | Format: `datetime` |
| `randomizeExecution` | `boolean` | ❌  | Whether execution time should be randomized within the specified range |  |
| `createdBy` | `string` | ✅  | DID of the user who created this scheduled action | Format: `did` |
| `createdAt` | `string` | ✅  | When the scheduled action was created | Format: `datetime` |
| `updatedAt` | `string` | ❌  | When the scheduled action was last updated | Format: `datetime` |
| `status` | `string` | ✅  | Current status of the scheduled action | Known Values: `pending`, `executed`, `cancelled`, `failed` |
| `lastExecutedAt` | `string` | ❌  | When the action was last attempted to be executed | Format: `datetime` |
| `lastFailureReason` | `string` | ❌  | Reason for the last execution failure |  |
| `executionEventId` | `integer` | ❌  | ID of the moderation event created when action was successfully executed |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "tools.ozone.moderation.defs",
  "defs": {
    "modEventView": {
      "type": "object",
      "required": [
        "id",
        "event",
        "subject",
        "subjectBlobCids",
        "createdBy",
        "createdAt"
      ],
      "properties": {
        "id": {
          "type": "integer"
        },
        "event": {
          "type": "union",
          "refs": [
            "#modEventTakedown",
            "#modEventReverseTakedown",
            "#modEventComment",
            "#modEventReport",
            "#modEventLabel",
            "#modEventAcknowledge",
            "#modEventEscalate",
            "#modEventMute",
            "#modEventUnmute",
            "#modEventMuteReporter",
            "#modEventUnmuteReporter",
            "#modEventEmail",
            "#modEventResolveAppeal",
            "#modEventDivert",
            "#modEventTag",
            "#accountEvent",
            "#identityEvent",
            "#recordEvent",
            "#modEventPriorityScore",
            "#ageAssuranceEvent",
            "#ageAssuranceOverrideEvent",
            "#revokeAccountCredentialsEvent",
            "#scheduleTakedownEvent",
            "#cancelScheduledTakedownEvent"
          ]
        },
        "subject": {
          "type": "union",
          "refs": [
            "com.atproto.admin.defs#repoRef",
            "com.atproto.repo.strongRef",
            "chat.bsky.convo.defs#messageRef"
          ]
        },
        "subjectBlobCids": {
          "type": "array",
          "items": {
            "type": "string"
          }
        },
        "createdBy": {
          "type": "string",
          "format": "did"
        },
        "createdAt": {
          "type": "string",
          "format": "datetime"
        },
        "creatorHandle": {
          "type": "string"
        },
        "subjectHandle": {
          "type": "string"
        },
        "modTool": {
          "type": "ref",
          "ref": "#modTool"
        }
      }
    },
    "modEventViewDetail": {
      "type": "object",
      "required": [
        "id",
        "event",
        "subject",
        "subjectBlobs",
        "createdBy",
        "createdAt"
      ],
      "properties": {
        "id": {
          "type": "integer"
        },
        "event": {
          "type": "union",
          "refs": [
            "#modEventTakedown",
            "#modEventReverseTakedown",
            "#modEventComment",
            "#modEventReport",
            "#modEventLabel",
            "#modEventAcknowledge",
            "#modEventEscalate",
            "#modEventMute",
            "#modEventUnmute",
            "#modEventMuteReporter",
            "#modEventUnmuteReporter",
            "#modEventEmail",
            "#modEventResolveAppeal",
            "#modEventDivert",
            "#modEventTag",
            "#accountEvent",
            "#identityEvent",
            "#recordEvent",
            "#modEventPriorityScore",
            "#ageAssuranceEvent",
            "#ageAssuranceOverrideEvent",
            "#revokeAccountCredentialsEvent",
            "#scheduleTakedownEvent",
            "#cancelScheduledTakedownEvent"
          ]
        },
        "subject": {
          "type": "union",
          "refs": [
            "#repoView",
            "#repoViewNotFound",
            "#recordView",
            "#recordViewNotFound"
          ]
        },
        "subjectBlobs": {
          "type": "array",
          "items": {
            "type": "ref",
            "ref": "#blobView"
          }
        },
        "createdBy": {
          "type": "string",
          "format": "did"
        },
        "createdAt": {
          "type": "string",
          "format": "datetime"
        },
        "modTool": {
          "type": "ref",
          "ref": "#modTool"
        }
      }
    },
    "subjectStatusView": {
      "type": "object",
      "required": [
        "id",
        "subject",
        "createdAt",
        "updatedAt",
        "reviewState"
      ],
      "properties": {
        "id": {
          "type": "integer"
        },
        "subject": {
          "type": "union",
          "refs": [
            "com.atproto.admin.defs#repoRef",
            "com.atproto.repo.strongRef",
            "chat.bsky.convo.defs#messageRef"
          ]
        },
        "hosting": {
          "type": "union",
          "refs": [
            "#accountHosting",
            "#recordHosting"
          ]
        },
        "subjectBlobCids": {
          "type": "array",
          "items": {
            "type": "string",
            "format": "cid"
          }
        },
        "subjectRepoHandle": {
          "type": "string"
        },
        "updatedAt": {
          "type": "string",
          "format": "datetime",
          "description": "Timestamp referencing when the last update was made to the moderation status of the subject"
        },
        "createdAt": {
          "type": "string",
          "format": "datetime",
          "description": "Timestamp referencing the first moderation status impacting event was emitted on the subject"
        },
        "reviewState": {
          "type": "ref",
          "ref": "#subjectReviewState"
        },
        "comment": {
          "type": "string",
          "description": "Sticky comment on the subject."
        },
        "priorityScore": {
          "type": "integer",
          "description": "Numeric value representing the level of priority. Higher score means higher priority.",
          "minimum": 0,
          "maximum": 100
        },
        "muteUntil": {
          "type": "string",
          "format": "datetime"
        },
        "muteReportingUntil": {
          "type": "string",
          "format": "datetime"
        },
        "lastReviewedBy": {
          "type": "string",
          "format": "did"
        },
        "lastReviewedAt": {
          "type": "string",
          "format": "datetime"
        },
        "lastReportedAt": {
          "type": "string",
          "format": "datetime"
        },
        "lastAppealedAt": {
          "type": "string",
          "format": "datetime",
          "description": "Timestamp referencing when the author of the subject appealed a moderation action"
        },
        "takendown": {
          "type": "boolean"
        },
        "appealed": {
          "type": "boolean",
          "description": "True indicates that the a previously taken moderator action was appealed against, by the author of the content. False indicates last appeal was resolved by moderators."
        },
        "suspendUntil": {
          "type": "string",
          "format": "datetime"
        },
        "tags": {
          "type": "array",
          "items": {
            "type": "string"
          }
        },
        "accountStats": {
          "description": "Statistics related to the account subject",
          "type": "ref",
          "ref": "#accountStats"
        },
        "recordsStats": {
          "description": "Statistics related to the record subjects authored by the subject's account",
          "type": "ref",
          "ref": "#recordsStats"
        },
        "ageAssuranceState": {
          "type": "string",
          "description": "Current age assurance state of the subject.",
          "knownValues": [
            "pending",
            "assured",
            "unknown",
            "reset",
            "blocked"
          ]
        },
        "ageAssuranceUpdatedBy": {
          "type": "string",
          "description": "Whether or not the last successful update to age assurance was made by the user or admin.",
          "knownValues": [
            "admin",
            "user"
          ]
        }
      }
    },
    "subjectView": {
      "description": "Detailed view of a subject. For record subjects, the author's repo and profile will be returned.",
      "type": "object",
      "required": [
        "type",
        "subject"
      ],
      "properties": {
        "type": {
          "type": "ref",
          "ref": "com.atproto.moderation.defs#subjectType"
        },
        "subject": {
          "type": "string"
        },
        "status": {
          "type": "ref",
          "ref": "#subjectStatusView"
        },
        "repo": {
          "type": "ref",
          "ref": "#repoViewDetail"
        },
        "profile": {
          "type": "union",
          "refs": []
        },
        "record": {
          "type": "ref",
          "ref": "#recordViewDetail"
        }
      }
    },
    "accountStats": {
      "description": "Statistics about a particular account subject",
      "type": "object",
      "properties": {
        "reportCount": {
          "description": "Total number of reports on the account",
          "type": "integer"
        },
        "appealCount": {
          "description": "Total number of appeals against a moderation action on the account",
          "type": "integer"
        },
        "suspendCount": {
          "description": "Number of times the account was suspended",
          "type": "integer"
        },
        "escalateCount": {
          "description": "Number of times the account was escalated",
          "type": "integer"
        },
        "takedownCount": {
          "description": "Number of times the account was taken down",
          "type": "integer"
        }
      }
    },
    "recordsStats": {
      "description": "Statistics about a set of record subject items",
      "type": "object",
      "properties": {
        "totalReports": {
          "description": "Cumulative sum of the number of reports on the items in the set",
          "type": "integer"
        },
        "reportedCount": {
          "description": "Number of items that were reported at least once",
          "type": "integer"
        },
        "escalatedCount": {
          "description": "Number of items that were escalated at least once",
          "type": "integer"
        },
        "appealedCount": {
          "description": "Number of items that were appealed at least once",
          "type": "integer"
        },
        "subjectCount": {
          "description": "Total number of item in the set",
          "type": "integer"
        },
        "pendingCount": {
          "description": "Number of item currently in \"reviewOpen\" or \"reviewEscalated\" state",
          "type": "integer"
        },
        "processedCount": {
          "description": "Number of item currently in \"reviewNone\" or \"reviewClosed\" state",
          "type": "integer"
        },
        "takendownCount": {
          "description": "Number of item currently taken down",
          "type": "integer"
        }
      }
    },
    "subjectReviewState": {
      "type": "string",
      "knownValues": [
        "#reviewOpen",
        "#reviewEscalated",
        "#reviewClosed",
        "#reviewNone"
      ]
    },
    "reviewOpen": {
      "type": "token",
      "description": "Moderator review status of a subject: Open. Indicates that the subject needs to be reviewed by a moderator"
    },
    "reviewEscalated": {
      "type": "token",
      "description": "Moderator review status of a subject: Escalated. Indicates that the subject was escalated for review by a moderator"
    },
    "reviewClosed": {
      "type": "token",
      "description": "Moderator review status of a subject: Closed. Indicates that the subject was already reviewed and resolved by a moderator"
    },
    "reviewNone": {
      "type": "token",
      "description": "Moderator review status of a subject: Unnecessary. Indicates that the subject does not need a review at the moment but there is probably some moderation related metadata available for it"
    },
    "modEventTakedown": {
      "type": "object",
      "description": "Take down a subject permanently or temporarily",
      "properties": {
        "comment": {
          "type": "string"
        },
        "durationInHours": {
          "type": "integer",
          "description": "Indicates how long the takedown should be in effect before automatically expiring."
        },
        "acknowledgeAccountSubjects": {
          "type": "boolean",
          "description": "If true, all other reports on content authored by this account will be resolved (acknowledged)."
        },
        "policies": {
          "type": "array",
          "maxLength": 5,
          "items": {
            "type": "string"
          },
          "description": "Names/Keywords of the policies that drove the decision."
        }
      }
    },
    "modEventReverseTakedown": {
      "type": "object",
      "description": "Revert take down action on a subject",
      "properties": {
        "comment": {
          "type": "string",
          "description": "Describe reasoning behind the reversal."
        }
      }
    },
    "modEventResolveAppeal": {
      "type": "object",
      "description": "Resolve appeal on a subject",
      "properties": {
        "comment": {
          "type": "string",
          "description": "Describe resolution."
        }
      }
    },
    "modEventComment": {
      "type": "object",
      "description": "Add a comment to a subject. An empty comment will clear any previously set sticky comment.",
      "properties": {
        "comment": {
          "type": "string"
        },
        "sticky": {
          "type": "boolean",
          "description": "Make the comment persistent on the subject"
        }
      }
    },
    "modEventReport": {
      "type": "object",
      "description": "Report a subject",
      "required": [
        "reportType"
      ],
      "properties": {
        "comment": {
          "type": "string"
        },
        "isReporterMuted": {
          "type": "boolean",
          "description": "Set to true if the reporter was muted from reporting at the time of the event. These reports won't impact the reviewState of the subject."
        },
        "reportType": {
          "type": "ref",
          "ref": "com.atproto.moderation.defs#reasonType"
        }
      }
    },
    "modEventLabel": {
      "type": "object",
      "description": "Apply/Negate labels on a subject",
      "required": [
        "createLabelVals",
        "negateLabelVals"
      ],
      "properties": {
        "comment": {
          "type": "string"
        },
        "createLabelVals": {
          "type": "array",
          "items": {
            "type": "string"
          }
        },
        "negateLabelVals": {
          "type": "array",
          "items": {
            "type": "string"
          }
        },
        "durationInHours": {
          "type": "integer",
          "description": "Indicates how long the label will remain on the subject. Only applies on labels that are being added."
        }
      }
    },
    "modEventPriorityScore": {
      "type": "object",
      "description": "Set priority score of the subject. Higher score means higher priority.",
      "required": [
        "score"
      ],
      "properties": {
        "comment": {
          "type": "string"
        },
        "score": {
          "type": "integer",
          "minimum": 0,
          "maximum": 100
        }
      }
    },
    "ageAssuranceEvent": {
      "type": "object",
      "description": "Age assurance info coming directly from users. Only works on DID subjects.",
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
    },
    "ageAssuranceOverrideEvent": {
      "type": "object",
      "description": "Age assurance status override by moderators. Only works on DID subjects.",
      "required": [
        "comment",
        "status"
      ],
      "properties": {
        "status": {
          "type": "string",
          "description": "The status to be set for the user decided by a moderator, overriding whatever value the user had previously. Use reset to default to original state.",
          "knownValues": [
            "assured",
            "reset",
            "blocked"
          ]
        },
        "comment": {
          "type": "string",
          "description": "Comment describing the reason for the override."
        }
      }
    },
    "revokeAccountCredentialsEvent": {
      "type": "object",
      "description": "Account credentials revocation by moderators. Only works on DID subjects.",
      "required": [
        "comment"
      ],
      "properties": {
        "comment": {
          "type": "string",
          "description": "Comment describing the reason for the revocation."
        }
      }
    },
    "modEventAcknowledge": {
      "type": "object",
      "properties": {
        "comment": {
          "type": "string"
        },
        "acknowledgeAccountSubjects": {
          "type": "boolean",
          "description": "If true, all other reports on content authored by this account will be resolved (acknowledged)."
        }
      }
    },
    "modEventEscalate": {
      "type": "object",
      "properties": {
        "comment": {
          "type": "string"
        }
      }
    },
    "modEventMute": {
      "type": "object",
      "description": "Mute incoming reports on a subject",
      "required": [
        "durationInHours"
      ],
      "properties": {
        "comment": {
          "type": "string"
        },
        "durationInHours": {
          "type": "integer",
          "description": "Indicates how long the subject should remain muted."
        }
      }
    },
    "modEventUnmute": {
      "type": "object",
      "description": "Unmute action on a subject",
      "properties": {
        "comment": {
          "type": "string",
          "description": "Describe reasoning behind the reversal."
        }
      }
    },
    "modEventMuteReporter": {
      "type": "object",
      "description": "Mute incoming reports from an account",
      "properties": {
        "comment": {
          "type": "string"
        },
        "durationInHours": {
          "type": "integer",
          "description": "Indicates how long the account should remain muted. Falsy value here means a permanent mute."
        }
      }
    },
    "modEventUnmuteReporter": {
      "type": "object",
      "description": "Unmute incoming reports from an account",
      "properties": {
        "comment": {
          "type": "string",
          "description": "Describe reasoning behind the reversal."
        }
      }
    },
    "modEventEmail": {
      "type": "object",
      "description": "Keep a log of outgoing email to a user",
      "required": [
        "subjectLine"
      ],
      "properties": {
        "subjectLine": {
          "type": "string",
          "description": "The subject line of the email sent to the user."
        },
        "content": {
          "type": "string",
          "description": "The content of the email sent to the user."
        },
        "comment": {
          "type": "string",
          "description": "Additional comment about the outgoing comm."
        }
      }
    },
    "modEventDivert": {
      "type": "object",
      "description": "Divert a record's blobs to a 3rd party service for further scanning/tagging",
      "properties": {
        "comment": {
          "type": "string"
        }
      }
    },
    "modEventTag": {
      "type": "object",
      "description": "Add/Remove a tag on a subject",
      "required": [
        "add",
        "remove"
      ],
      "properties": {
        "add": {
          "type": "array",
          "items": {
            "type": "string"
          },
          "description": "Tags to be added to the subject. If already exists, won't be duplicated."
        },
        "remove": {
          "type": "array",
          "items": {
            "type": "string"
          },
          "description": "Tags to be removed to the subject. Ignores a tag If it doesn't exist, won't be duplicated."
        },
        "comment": {
          "type": "string",
          "description": "Additional comment about added/removed tags."
        }
      }
    },
    "accountEvent": {
      "type": "object",
      "description": "Logs account status related events on a repo subject. Normally captured by automod from the firehose and emitted to ozone for historical tracking.",
      "required": [
        "timestamp",
        "active"
      ],
      "properties": {
        "comment": {
          "type": "string"
        },
        "active": {
          "type": "boolean",
          "description": "Indicates that the account has a repository which can be fetched from the host that emitted this event."
        },
        "status": {
          "type": "string",
          "knownValues": [
            "unknown",
            "deactivated",
            "deleted",
            "takendown",
            "suspended",
            "tombstoned"
          ]
        },
        "timestamp": {
          "type": "string",
          "format": "datetime"
        }
      }
    },
    "identityEvent": {
      "type": "object",
      "description": "Logs identity related events on a repo subject. Normally captured by automod from the firehose and emitted to ozone for historical tracking.",
      "required": [
        "timestamp"
      ],
      "properties": {
        "comment": {
          "type": "string"
        },
        "handle": {
          "type": "string",
          "format": "handle"
        },
        "pdsHost": {
          "type": "string",
          "format": "uri"
        },
        "tombstone": {
          "type": "boolean"
        },
        "timestamp": {
          "type": "string",
          "format": "datetime"
        }
      }
    },
    "recordEvent": {
      "type": "object",
      "description": "Logs lifecycle event on a record subject. Normally captured by automod from the firehose and emitted to ozone for historical tracking.",
      "required": [
        "timestamp",
        "op"
      ],
      "properties": {
        "comment": {
          "type": "string"
        },
        "op": {
          "type": "string",
          "knownValues": [
            "create",
            "update",
            "delete"
          ]
        },
        "cid": {
          "type": "string",
          "format": "cid"
        },
        "timestamp": {
          "type": "string",
          "format": "datetime"
        }
      }
    },
    "scheduleTakedownEvent": {
      "type": "object",
      "description": "Logs a scheduled takedown action for an account.",
      "properties": {
        "comment": {
          "type": "string"
        },
        "executeAt": {
          "type": "string",
          "format": "datetime"
        },
        "executeAfter": {
          "type": "string",
          "format": "datetime"
        },
        "executeUntil": {
          "type": "string",
          "format": "datetime"
        }
      }
    },
    "cancelScheduledTakedownEvent": {
      "type": "object",
      "description": "Logs cancellation of a scheduled takedown action for an account.",
      "properties": {
        "comment": {
          "type": "string"
        }
      }
    },
    "repoView": {
      "type": "object",
      "required": [
        "did",
        "handle",
        "relatedRecords",
        "indexedAt",
        "moderation"
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
        "email": {
          "type": "string"
        },
        "relatedRecords": {
          "type": "array",
          "items": {
            "type": "unknown"
          }
        },
        "indexedAt": {
          "type": "string",
          "format": "datetime"
        },
        "moderation": {
          "type": "ref",
          "ref": "#moderation"
        },
        "invitedBy": {
          "type": "ref",
          "ref": "com.atproto.server.defs#inviteCode"
        },
        "invitesDisabled": {
          "type": "boolean"
        },
        "inviteNote": {
          "type": "string"
        },
        "deactivatedAt": {
          "type": "string",
          "format": "datetime"
        },
        "threatSignatures": {
          "type": "array",
          "items": {
            "type": "ref",
            "ref": "com.atproto.admin.defs#threatSignature"
          }
        }
      }
    },
    "repoViewDetail": {
      "type": "object",
      "required": [
        "did",
        "handle",
        "relatedRecords",
        "indexedAt",
        "moderation"
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
        "email": {
          "type": "string"
        },
        "relatedRecords": {
          "type": "array",
          "items": {
            "type": "unknown"
          }
        },
        "indexedAt": {
          "type": "string",
          "format": "datetime"
        },
        "moderation": {
          "type": "ref",
          "ref": "#moderationDetail"
        },
        "labels": {
          "type": "array",
          "items": {
            "type": "ref",
            "ref": "com.atproto.label.defs#label"
          }
        },
        "invitedBy": {
          "type": "ref",
          "ref": "com.atproto.server.defs#inviteCode"
        },
        "invites": {
          "type": "array",
          "items": {
            "type": "ref",
            "ref": "com.atproto.server.defs#inviteCode"
          }
        },
        "invitesDisabled": {
          "type": "boolean"
        },
        "inviteNote": {
          "type": "string"
        },
        "emailConfirmedAt": {
          "type": "string",
          "format": "datetime"
        },
        "deactivatedAt": {
          "type": "string",
          "format": "datetime"
        },
        "threatSignatures": {
          "type": "array",
          "items": {
            "type": "ref",
            "ref": "com.atproto.admin.defs#threatSignature"
          }
        }
      }
    },
    "repoViewNotFound": {
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
    "recordView": {
      "type": "object",
      "required": [
        "uri",
        "cid",
        "value",
        "blobCids",
        "indexedAt",
        "moderation",
        "repo"
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
        "value": {
          "type": "unknown"
        },
        "blobCids": {
          "type": "array",
          "items": {
            "type": "string",
            "format": "cid"
          }
        },
        "indexedAt": {
          "type": "string",
          "format": "datetime"
        },
        "moderation": {
          "type": "ref",
          "ref": "#moderation"
        },
        "repo": {
          "type": "ref",
          "ref": "#repoView"
        }
      }
    },
    "recordViewDetail": {
      "type": "object",
      "required": [
        "uri",
        "cid",
        "value",
        "blobs",
        "indexedAt",
        "moderation",
        "repo"
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
        "value": {
          "type": "unknown"
        },
        "blobs": {
          "type": "array",
          "items": {
            "type": "ref",
            "ref": "#blobView"
          }
        },
        "labels": {
          "type": "array",
          "items": {
            "type": "ref",
            "ref": "com.atproto.label.defs#label"
          }
        },
        "indexedAt": {
          "type": "string",
          "format": "datetime"
        },
        "moderation": {
          "type": "ref",
          "ref": "#moderationDetail"
        },
        "repo": {
          "type": "ref",
          "ref": "#repoView"
        }
      }
    },
    "recordViewNotFound": {
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
    "moderation": {
      "type": "object",
      "properties": {
        "subjectStatus": {
          "type": "ref",
          "ref": "#subjectStatusView"
        }
      }
    },
    "moderationDetail": {
      "type": "object",
      "properties": {
        "subjectStatus": {
          "type": "ref",
          "ref": "#subjectStatusView"
        }
      }
    },
    "blobView": {
      "type": "object",
      "required": [
        "cid",
        "mimeType",
        "size",
        "createdAt"
      ],
      "properties": {
        "cid": {
          "type": "string",
          "format": "cid"
        },
        "mimeType": {
          "type": "string"
        },
        "size": {
          "type": "integer"
        },
        "createdAt": {
          "type": "string",
          "format": "datetime"
        },
        "details": {
          "type": "union",
          "refs": [
            "#imageDetails",
            "#videoDetails"
          ]
        },
        "moderation": {
          "type": "ref",
          "ref": "#moderation"
        }
      }
    },
    "imageDetails": {
      "type": "object",
      "required": [
        "width",
        "height"
      ],
      "properties": {
        "width": {
          "type": "integer"
        },
        "height": {
          "type": "integer"
        }
      }
    },
    "videoDetails": {
      "type": "object",
      "required": [
        "width",
        "height",
        "length"
      ],
      "properties": {
        "width": {
          "type": "integer"
        },
        "height": {
          "type": "integer"
        },
        "length": {
          "type": "integer"
        }
      }
    },
    "accountHosting": {
      "type": "object",
      "required": [
        "status"
      ],
      "properties": {
        "status": {
          "type": "string",
          "knownValues": [
            "takendown",
            "suspended",
            "deleted",
            "deactivated",
            "unknown"
          ]
        },
        "updatedAt": {
          "type": "string",
          "format": "datetime"
        },
        "createdAt": {
          "type": "string",
          "format": "datetime"
        },
        "deletedAt": {
          "type": "string",
          "format": "datetime"
        },
        "deactivatedAt": {
          "type": "string",
          "format": "datetime"
        },
        "reactivatedAt": {
          "type": "string",
          "format": "datetime"
        }
      }
    },
    "recordHosting": {
      "type": "object",
      "required": [
        "status"
      ],
      "properties": {
        "status": {
          "type": "string",
          "knownValues": [
            "deleted",
            "unknown"
          ]
        },
        "updatedAt": {
          "type": "string",
          "format": "datetime"
        },
        "createdAt": {
          "type": "string",
          "format": "datetime"
        },
        "deletedAt": {
          "type": "string",
          "format": "datetime"
        }
      }
    },
    "reporterStats": {
      "type": "object",
      "required": [
        "did",
        "accountReportCount",
        "recordReportCount",
        "reportedAccountCount",
        "reportedRecordCount",
        "takendownAccountCount",
        "takendownRecordCount",
        "labeledAccountCount",
        "labeledRecordCount"
      ],
      "properties": {
        "did": {
          "type": "string",
          "format": "did"
        },
        "accountReportCount": {
          "type": "integer",
          "description": "The total number of reports made by the user on accounts."
        },
        "recordReportCount": {
          "type": "integer",
          "description": "The total number of reports made by the user on records."
        },
        "reportedAccountCount": {
          "type": "integer",
          "description": "The total number of accounts reported by the user."
        },
        "reportedRecordCount": {
          "type": "integer",
          "description": "The total number of records reported by the user."
        },
        "takendownAccountCount": {
          "type": "integer",
          "description": "The total number of accounts taken down as a result of the user's reports."
        },
        "takendownRecordCount": {
          "type": "integer",
          "description": "The total number of records taken down as a result of the user's reports."
        },
        "labeledAccountCount": {
          "type": "integer",
          "description": "The total number of accounts labeled as a result of the user's reports."
        },
        "labeledRecordCount": {
          "type": "integer",
          "description": "The total number of records labeled as a result of the user's reports."
        }
      }
    },
    "modTool": {
      "type": "object",
      "description": "Moderation tool information for tracing the source of the action",
      "required": [
        "name"
      ],
      "properties": {
        "name": {
          "type": "string",
          "description": "Name/identifier of the source (e.g., 'automod', 'ozone/workspace')"
        },
        "meta": {
          "type": "unknown",
          "description": "Additional arbitrary metadata about the source"
        }
      }
    },
    "timelineEventPlcCreate": {
      "type": "token",
      "description": "Moderation event timeline event for a PLC create operation"
    },
    "timelineEventPlcOperation": {
      "type": "token",
      "description": "Moderation event timeline event for generic PLC operation"
    },
    "timelineEventPlcTombstone": {
      "type": "token",
      "description": "Moderation event timeline event for a PLC tombstone operation"
    },
    "scheduledActionView": {
      "type": "object",
      "description": "View of a scheduled moderation action",
      "required": [
        "id",
        "action",
        "did",
        "createdBy",
        "createdAt",
        "status"
      ],
      "properties": {
        "id": {
          "type": "integer",
          "description": "Auto-incrementing row ID"
        },
        "action": {
          "type": "string",
          "knownValues": [
            "takedown"
          ],
          "description": "Type of action to be executed"
        },
        "eventData": {
          "type": "unknown",
          "description": "Serialized event object that will be propagated to the event when performed"
        },
        "did": {
          "type": "string",
          "format": "did",
          "description": "Subject DID for the action"
        },
        "executeAt": {
          "type": "string",
          "format": "datetime",
          "description": "Exact time to execute the action"
        },
        "executeAfter": {
          "type": "string",
          "format": "datetime",
          "description": "Earliest time to execute the action (for randomized scheduling)"
        },
        "executeUntil": {
          "type": "string",
          "format": "datetime",
          "description": "Latest time to execute the action (for randomized scheduling)"
        },
        "randomizeExecution": {
          "type": "boolean",
          "description": "Whether execution time should be randomized within the specified range"
        },
        "createdBy": {
          "type": "string",
          "format": "did",
          "description": "DID of the user who created this scheduled action"
        },
        "createdAt": {
          "type": "string",
          "format": "datetime",
          "description": "When the scheduled action was created"
        },
        "updatedAt": {
          "type": "string",
          "format": "datetime",
          "description": "When the scheduled action was last updated"
        },
        "status": {
          "type": "string",
          "knownValues": [
            "pending",
            "executed",
            "cancelled",
            "failed"
          ],
          "description": "Current status of the scheduled action"
        },
        "lastExecutedAt": {
          "type": "string",
          "format": "datetime",
          "description": "When the action was last attempted to be executed"
        },
        "lastFailureReason": {
          "type": "string",
          "description": "Reason for the last execution failure"
        },
        "executionEventId": {
          "type": "integer",
          "description": "ID of the moderation event created when action was successfully executed"
        }
      }
    }
  }
}
```
