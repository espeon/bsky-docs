---
title: app.bsky.labeler.service
description: Reference for the app.bsky.labeler.service lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `record`

A declaration of the existence of labeler service.

**Record Key:** `literal:self`

**Record Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `policies` | [`app.bsky.labeler.defs#labelerPolicies`](/app/bsky/labeler/defs#labelerPolicies) | ✅  |  |  |
| `labels` | Union of:<br/>&nbsp;&nbsp;[`com.atproto.label.defs#selfLabels`](/com/atproto/label/defs#selfLabels) | ❌  |  |  |
| `createdAt` | `string` | ✅  |  | Format: `datetime` |
| `reasonTypes` | Array of [`com.atproto.moderation.defs#reasonType`](/com/atproto/moderation/defs#reasonType) | ❌  | The set of report reason 'codes' which are in-scope for this service to review and action. These usually align to policy categories. If not defined (distinct from empty array), all reason types are allowed. |  |
| `subjectTypes` | Array of [`com.atproto.moderation.defs#subjectType`](/com/atproto/moderation/defs#subjectType) | ❌  | The set of subject types (account, record, etc) this service accepts reports on. |  |
| `subjectCollections` | Array of `string` | ❌  | Set of record types (collection NSIDs) which can be reported to this service. If not defined (distinct from empty array), default is any record type. |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.labeler.service",
  "defs": {
    "main": {
      "type": "record",
      "description": "A declaration of the existence of labeler service.",
      "key": "literal:self",
      "record": {
        "type": "object",
        "required": [
          "policies",
          "createdAt"
        ],
        "properties": {
          "policies": {
            "type": "ref",
            "ref": "app.bsky.labeler.defs#labelerPolicies"
          },
          "labels": {
            "type": "union",
            "refs": [
              "com.atproto.label.defs#selfLabels"
            ]
          },
          "createdAt": {
            "type": "string",
            "format": "datetime"
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
      }
    }
  }
}
```
