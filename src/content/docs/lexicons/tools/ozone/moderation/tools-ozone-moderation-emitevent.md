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
| `event` | Union of:<br/>&nbsp;&nbsp;[`tools.ozone.moderation.defs#modEventTakedown`](/lexicons/tools/ozone/moderation/tools-ozone-moderation-defs#modeventtakedown)<br/>&nbsp;&nbsp;[`tools.ozone.moderation.defs#modEventAcknowledge`](/lexicons/tools/ozone/moderation/tools-ozone-moderation-defs#modeventacknowledge)<br/>&nbsp;&nbsp;[`tools.ozone.moderation.defs#modEventEscalate`](/lexicons/tools/ozone/moderation/tools-ozone-moderation-defs#modeventescalate)<br/>&nbsp;&nbsp;[`tools.ozone.moderation.defs#modEventComment`](/lexicons/tools/ozone/moderation/tools-ozone-moderation-defs#modeventcomment)<br/>&nbsp;&nbsp;[`tools.ozone.moderation.defs#modEventLabel`](/lexicons/tools/ozone/moderation/tools-ozone-moderation-defs#modeventlabel)<br/>&nbsp;&nbsp;[`tools.ozone.moderation.defs#modEventReport`](/lexicons/tools/ozone/moderation/tools-ozone-moderation-defs#modeventreport)<br/>&nbsp;&nbsp;[`tools.ozone.moderation.defs#modEventMute`](/lexicons/tools/ozone/moderation/tools-ozone-moderation-defs#modeventmute)<br/>&nbsp;&nbsp;[`tools.ozone.moderation.defs#modEventUnmute`](/lexicons/tools/ozone/moderation/tools-ozone-moderation-defs#modeventunmute)<br/>&nbsp;&nbsp;[`tools.ozone.moderation.defs#modEventMuteReporter`](/lexicons/tools/ozone/moderation/tools-ozone-moderation-defs#modeventmutereporter)<br/>&nbsp;&nbsp;[`tools.ozone.moderation.defs#modEventUnmuteReporter`](/lexicons/tools/ozone/moderation/tools-ozone-moderation-defs#modeventunmutereporter)<br/>&nbsp;&nbsp;[`tools.ozone.moderation.defs#modEventReverseTakedown`](/lexicons/tools/ozone/moderation/tools-ozone-moderation-defs#modeventreversetakedown)<br/>&nbsp;&nbsp;[`tools.ozone.moderation.defs#modEventResolveAppeal`](/lexicons/tools/ozone/moderation/tools-ozone-moderation-defs#modeventresolveappeal)<br/>&nbsp;&nbsp;[`tools.ozone.moderation.defs#modEventEmail`](/lexicons/tools/ozone/moderation/tools-ozone-moderation-defs#modeventemail)<br/>&nbsp;&nbsp;[`tools.ozone.moderation.defs#modEventDivert`](/lexicons/tools/ozone/moderation/tools-ozone-moderation-defs#modeventdivert)<br/>&nbsp;&nbsp;[`tools.ozone.moderation.defs#modEventTag`](/lexicons/tools/ozone/moderation/tools-ozone-moderation-defs#modeventtag)<br/>&nbsp;&nbsp;[`tools.ozone.moderation.defs#accountEvent`](/lexicons/tools/ozone/moderation/tools-ozone-moderation-defs#accountevent)<br/>&nbsp;&nbsp;[`tools.ozone.moderation.defs#identityEvent`](/lexicons/tools/ozone/moderation/tools-ozone-moderation-defs#identityevent)<br/>&nbsp;&nbsp;[`tools.ozone.moderation.defs#recordEvent`](/lexicons/tools/ozone/moderation/tools-ozone-moderation-defs#recordevent)<br/>&nbsp;&nbsp;[`tools.ozone.moderation.defs#modEventPriorityScore`](/lexicons/tools/ozone/moderation/tools-ozone-moderation-defs#modeventpriorityscore)<br/>&nbsp;&nbsp;[`tools.ozone.moderation.defs#ageAssuranceEvent`](/lexicons/tools/ozone/moderation/tools-ozone-moderation-defs#ageassuranceevent)<br/>&nbsp;&nbsp;[`tools.ozone.moderation.defs#ageAssuranceOverrideEvent`](/lexicons/tools/ozone/moderation/tools-ozone-moderation-defs#ageassuranceoverrideevent)<br/>&nbsp;&nbsp;[`tools.ozone.moderation.defs#revokeAccountCredentialsEvent`](/lexicons/tools/ozone/moderation/tools-ozone-moderation-defs#revokeaccountcredentialsevent)<br/>&nbsp;&nbsp;[`tools.ozone.moderation.defs#scheduleTakedownEvent`](/lexicons/tools/ozone/moderation/tools-ozone-moderation-defs#scheduletakedownevent)<br/>&nbsp;&nbsp;[`tools.ozone.moderation.defs#cancelScheduledTakedownEvent`](/lexicons/tools/ozone/moderation/tools-ozone-moderation-defs#cancelscheduledtakedownevent) | ✅  |  |  |
| `subject` | Union of:<br/>&nbsp;&nbsp;[`com.atproto.admin.defs#repoRef`](/lexicons/com/atproto/admin/com-atproto-admin-defs#reporef)<br/>&nbsp;&nbsp;[`com.atproto.repo.strongRef`](/lexicons/com/atproto/repo/com-atproto-repo-strongref) | ✅  |  |  |
| `subjectBlobCids` | Array of `string` | ❌  |  |  |
| `createdBy` | `string` | ✅  |  | Format: `did` |
| `modTool` | [`tools.ozone.moderation.defs#modTool`](/lexicons/tools/ozone/moderation/tools-ozone-moderation-defs#modtool) | ❌  |  |  |
| `externalId` | `string` | ❌  | An optional external ID for the event, used to deduplicate events from external systems. Fails when an event of same type with the same external ID exists for the same subject. |  |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** [`tools.ozone.moderation.defs#modEventView`](/lexicons/tools/ozone/moderation/tools-ozone-moderation-defs#modeventview)


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
