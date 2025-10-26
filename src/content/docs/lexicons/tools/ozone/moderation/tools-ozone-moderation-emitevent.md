---
title: tools.ozone.moderation.emitEvent
description: Reference for the tools.ozone.moderation.emitEvent lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Take a moderation action on an actor.

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `event` | Union of:<br/>&nbsp;&nbsp;[`tools.ozone.moderation.defs#modEventTakedown`](lexicons/tools/ozone/moderation/defs#modEventTakedown)<br/>&nbsp;&nbsp;[`tools.ozone.moderation.defs#modEventAcknowledge`](lexicons/tools/ozone/moderation/defs#modEventAcknowledge)<br/>&nbsp;&nbsp;[`tools.ozone.moderation.defs#modEventEscalate`](lexicons/tools/ozone/moderation/defs#modEventEscalate)<br/>&nbsp;&nbsp;[`tools.ozone.moderation.defs#modEventComment`](lexicons/tools/ozone/moderation/defs#modEventComment)<br/>&nbsp;&nbsp;[`tools.ozone.moderation.defs#modEventLabel`](lexicons/tools/ozone/moderation/defs#modEventLabel)<br/>&nbsp;&nbsp;[`tools.ozone.moderation.defs#modEventReport`](lexicons/tools/ozone/moderation/defs#modEventReport)<br/>&nbsp;&nbsp;[`tools.ozone.moderation.defs#modEventMute`](lexicons/tools/ozone/moderation/defs#modEventMute)<br/>&nbsp;&nbsp;[`tools.ozone.moderation.defs#modEventUnmute`](lexicons/tools/ozone/moderation/defs#modEventUnmute)<br/>&nbsp;&nbsp;[`tools.ozone.moderation.defs#modEventMuteReporter`](lexicons/tools/ozone/moderation/defs#modEventMuteReporter)<br/>&nbsp;&nbsp;[`tools.ozone.moderation.defs#modEventUnmuteReporter`](lexicons/tools/ozone/moderation/defs#modEventUnmuteReporter)<br/>&nbsp;&nbsp;[`tools.ozone.moderation.defs#modEventReverseTakedown`](lexicons/tools/ozone/moderation/defs#modEventReverseTakedown)<br/>&nbsp;&nbsp;[`tools.ozone.moderation.defs#modEventResolveAppeal`](lexicons/tools/ozone/moderation/defs#modEventResolveAppeal)<br/>&nbsp;&nbsp;[`tools.ozone.moderation.defs#modEventEmail`](lexicons/tools/ozone/moderation/defs#modEventEmail)<br/>&nbsp;&nbsp;[`tools.ozone.moderation.defs#modEventDivert`](lexicons/tools/ozone/moderation/defs#modEventDivert)<br/>&nbsp;&nbsp;[`tools.ozone.moderation.defs#modEventTag`](lexicons/tools/ozone/moderation/defs#modEventTag)<br/>&nbsp;&nbsp;[`tools.ozone.moderation.defs#accountEvent`](lexicons/tools/ozone/moderation/defs#accountEvent)<br/>&nbsp;&nbsp;[`tools.ozone.moderation.defs#identityEvent`](lexicons/tools/ozone/moderation/defs#identityEvent)<br/>&nbsp;&nbsp;[`tools.ozone.moderation.defs#recordEvent`](lexicons/tools/ozone/moderation/defs#recordEvent)<br/>&nbsp;&nbsp;[`tools.ozone.moderation.defs#modEventPriorityScore`](lexicons/tools/ozone/moderation/defs#modEventPriorityScore)<br/>&nbsp;&nbsp;[`tools.ozone.moderation.defs#ageAssuranceEvent`](lexicons/tools/ozone/moderation/defs#ageAssuranceEvent)<br/>&nbsp;&nbsp;[`tools.ozone.moderation.defs#ageAssuranceOverrideEvent`](lexicons/tools/ozone/moderation/defs#ageAssuranceOverrideEvent)<br/>&nbsp;&nbsp;[`tools.ozone.moderation.defs#revokeAccountCredentialsEvent`](lexicons/tools/ozone/moderation/defs#revokeAccountCredentialsEvent)<br/>&nbsp;&nbsp;[`tools.ozone.moderation.defs#scheduleTakedownEvent`](lexicons/tools/ozone/moderation/defs#scheduleTakedownEvent)<br/>&nbsp;&nbsp;[`tools.ozone.moderation.defs#cancelScheduledTakedownEvent`](lexicons/tools/ozone/moderation/defs#cancelScheduledTakedownEvent) | ✅  |  |  |
| `subject` | Union of:<br/>&nbsp;&nbsp;[`com.atproto.admin.defs#repoRef`](lexicons/com/atproto/admin/defs#repoRef)<br/>&nbsp;&nbsp;[`com.atproto.repo.strongRef`](lexicons/com/atproto/repo/strongref#undefined) | ✅  |  |  |
| `subjectBlobCids` | Array of `string` | ❌  |  |  |
| `createdBy` | `string` | ✅  |  | Format: `did` |
| `modTool` | [`tools.ozone.moderation.defs#modTool`](lexicons/tools/ozone/moderation/defs#modTool) | ❌  |  |  |
| `externalId` | `string` | ❌  | An optional external ID for the event, used to deduplicate events from external systems. Fails when an event of same type with the same external ID exists for the same subject. |  |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** [`tools.ozone.moderation.defs#modEventView`](lexicons/tools/ozone/moderation/defs#modEventView)


**Possible Errors:**

- `SubjectHasAction`
- `DuplicateExternalId`: An event with the same external ID already exists for the subject.

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "tools.ozone.moderation.emitEvent",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Take a moderation action on an actor.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "event",
            "subject",
            "createdBy"
          ],
          "properties": {
            "event": {
              "type": "union",
              "refs": [
                "tools.ozone.moderation.defs#modEventTakedown",
                "tools.ozone.moderation.defs#modEventAcknowledge",
                "tools.ozone.moderation.defs#modEventEscalate",
                "tools.ozone.moderation.defs#modEventComment",
                "tools.ozone.moderation.defs#modEventLabel",
                "tools.ozone.moderation.defs#modEventReport",
                "tools.ozone.moderation.defs#modEventMute",
                "tools.ozone.moderation.defs#modEventUnmute",
                "tools.ozone.moderation.defs#modEventMuteReporter",
                "tools.ozone.moderation.defs#modEventUnmuteReporter",
                "tools.ozone.moderation.defs#modEventReverseTakedown",
                "tools.ozone.moderation.defs#modEventResolveAppeal",
                "tools.ozone.moderation.defs#modEventEmail",
                "tools.ozone.moderation.defs#modEventDivert",
                "tools.ozone.moderation.defs#modEventTag",
                "tools.ozone.moderation.defs#accountEvent",
                "tools.ozone.moderation.defs#identityEvent",
                "tools.ozone.moderation.defs#recordEvent",
                "tools.ozone.moderation.defs#modEventPriorityScore",
                "tools.ozone.moderation.defs#ageAssuranceEvent",
                "tools.ozone.moderation.defs#ageAssuranceOverrideEvent",
                "tools.ozone.moderation.defs#revokeAccountCredentialsEvent",
                "tools.ozone.moderation.defs#scheduleTakedownEvent",
                "tools.ozone.moderation.defs#cancelScheduledTakedownEvent"
              ]
            },
            "subject": {
              "type": "union",
              "refs": [
                "com.atproto.admin.defs#repoRef",
                "com.atproto.repo.strongRef"
              ]
            },
            "subjectBlobCids": {
              "type": "array",
              "items": {
                "type": "string",
                "format": "cid"
              }
            },
            "createdBy": {
              "type": "string",
              "format": "did"
            },
            "modTool": {
              "type": "ref",
              "ref": "tools.ozone.moderation.defs#modTool"
            },
            "externalId": {
              "type": "string",
              "description": "An optional external ID for the event, used to deduplicate events from external systems. Fails when an event of same type with the same external ID exists for the same subject."
            }
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "ref",
          "ref": "tools.ozone.moderation.defs#modEventView"
        }
      },
      "errors": [
        {
          "name": "SubjectHasAction"
        },
        {
          "name": "DuplicateExternalId",
          "description": "An event with the same external ID already exists for the subject."
        }
      ]
    }
  }
}
```
