---
title: app.bsky.labeler.defs
description: Reference for the app.bsky.labeler.defs lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="labelerview"></a>
### `labelerView`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `uri` | `string` | ✅  |  | Format: `at-uri` |
| `cid` | `string` | ✅  |  | Format: `cid` |
| `creator` | [`app.bsky.actor.defs#profileView`](/lexicons/app/bsky/actor/app-bsky-actor-defs#profileview) | ✅  |  |  |
| `likeCount` | `integer` | ❌  |  | Min: 0 |
| `viewer` | [`#labelerViewerState`](#labelerviewerstate) | ❌  |  |  |
| `indexedAt` | `string` | ✅  |  | Format: `datetime` |
| `labels` | Array of [`com.atproto.label.defs#label`](/lexicons/com/atproto/label/com-atproto-label-defs#label) | ❌  |  |  |

---

<a name="labelerviewdetailed"></a>
### `labelerViewDetailed`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `uri` | `string` | ✅  |  | Format: `at-uri` |
| `cid` | `string` | ✅  |  | Format: `cid` |
| `creator` | [`app.bsky.actor.defs#profileView`](/lexicons/app/bsky/actor/app-bsky-actor-defs#profileview) | ✅  |  |  |
| `policies` | [`app.bsky.labeler.defs#labelerPolicies`](/lexicons/app/bsky/labeler/app-bsky-labeler-defs#labelerpolicies) | ✅  |  |  |
| `likeCount` | `integer` | ❌  |  | Min: 0 |
| `viewer` | [`#labelerViewerState`](#labelerviewerstate) | ❌  |  |  |
| `indexedAt` | `string` | ✅  |  | Format: `datetime` |
| `labels` | Array of [`com.atproto.label.defs#label`](/lexicons/com/atproto/label/com-atproto-label-defs#label) | ❌  |  |  |
| `reasonTypes` | Array of [`com.atproto.moderation.defs#reasonType`](/lexicons/com/atproto/moderation/com-atproto-moderation-defs#reasontype) | ❌  | The set of report reason 'codes' which are in-scope for this service to review and action. These usually align to policy categories. If not defined (distinct from empty array), all reason types are allowed. |  |
| `subjectTypes` | Array of [`com.atproto.moderation.defs#subjectType`](/lexicons/com/atproto/moderation/com-atproto-moderation-defs#subjecttype) | ❌  | The set of subject types (account, record, etc) this service accepts reports on. |  |
| `subjectCollections` | Array of `string` | ❌  | Set of record types (collection NSIDs) which can be reported to this service. If not defined (distinct from empty array), default is any record type. |  |

---

<a name="labelerviewerstate"></a>
### `labelerViewerState`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `like` | `string` | ❌  |  | Format: `at-uri` |

---

<a name="labelerpolicies"></a>
### `labelerPolicies`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `labelValues` | Array of [`com.atproto.label.defs#labelValue`](/lexicons/com/atproto/label/com-atproto-label-defs#labelvalue) | ✅  | The label values which this labeler publishes. May include global or custom labels. |  |
| `labelValueDefinitions` | Array of [`com.atproto.label.defs#labelValueDefinition`](/lexicons/com/atproto/label/com-atproto-label-defs#labelvaluedefinition) | ❌  | Label values created by this labeler and scoped exclusively to it. Labels defined here will override global label definitions for this labeler. |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.labeler.defs",
  "defs": {
    "labelerView": {
      "type": "object",
      "required": [
        "uri",
        "cid",
        "creator",
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
        "creator": {
          "type": "ref",
          "ref": "app.bsky.actor.defs#profileView"
        },
        "likeCount": {
          "type": "integer",
          "minimum": 0
        },
        "viewer": {
          "type": "ref",
          "ref": "#labelerViewerState"
        },
        "indexedAt": {
          "type": "string",
          "format": "datetime"
        },
        "labels": {
          "type": "array",
          "items": {
            "type": "ref",
            "ref": "com.atproto.label.defs#label"
          }
        }
      }
    },
    "labelerViewDetailed": {
      "type": "object",
      "required": [
        "uri",
        "cid",
        "creator",
        "policies",
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
        "creator": {
          "type": "ref",
          "ref": "app.bsky.actor.defs#profileView"
        },
        "policies": {
          "type": "ref",
          "ref": "app.bsky.labeler.defs#labelerPolicies"
        },
        "likeCount": {
          "type": "integer",
          "minimum": 0
        },
        "viewer": {
          "type": "ref",
          "ref": "#labelerViewerState"
        },
        "indexedAt": {
          "type": "string",
          "format": "datetime"
        },
        "labels": {
          "type": "array",
          "items": {
            "type": "ref",
            "ref": "com.atproto.label.defs#label"
          }
        },
        "reasonTypes": {
          "description": "The set of report reason 'codes' which are in-scope for this service to review and action. These usually align to policy categories. If not defined (distinct from empty array), all reason types are allowed.",
          "type": "array",
          "items": {
            "type": "ref",
            "ref": "com.atproto.moderation.defs#reasonType"
          }
        },
        "subjectTypes": {
          "description": "The set of subject types (account, record, etc) this service accepts reports on.",
          "type": "array",
          "items": {
            "type": "ref",
            "ref": "com.atproto.moderation.defs#subjectType"
          }
        },
        "subjectCollections": {
          "type": "array",
          "description": "Set of record types (collection NSIDs) which can be reported to this service. If not defined (distinct from empty array), default is any record type.",
          "items": {
            "type": "string",
            "format": "nsid"
          }
        }
      }
    },
    "labelerViewerState": {
      "type": "object",
      "properties": {
        "like": {
          "type": "string",
          "format": "at-uri"
        }
      }
    },
    "labelerPolicies": {
      "type": "object",
      "required": [
        "labelValues"
      ],
      "properties": {
        "labelValues": {
          "type": "array",
          "description": "The label values which this labeler publishes. May include global or custom labels.",
          "items": {
            "type": "ref",
            "ref": "com.atproto.label.defs#labelValue"
          }
        },
        "labelValueDefinitions": {
          "type": "array",
          "description": "Label values created by this labeler and scoped exclusively to it. Labels defined here will override global label definitions for this labeler.",
          "items": {
            "type": "ref",
            "ref": "com.atproto.label.defs#labelValueDefinition"
          }
        }
      }
    }
  }
}
```
