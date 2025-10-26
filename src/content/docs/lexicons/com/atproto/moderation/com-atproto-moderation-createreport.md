---
title: com.atproto.moderation.createReport
description: Reference for the com.atproto.moderation.createReport lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Submit a moderation report regarding an atproto account or record. Implemented by moderation services (with PDS proxying), and requires auth.

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `reasonType` | [`com.atproto.moderation.defs#reasonType`](/com/atproto/moderation/defs#reasonType) | ✅  | Indicates the broad category of violation the report is for. |  |
| `reason` | `string` | ❌  | Additional context about the content and violation. | Max Length: 20000<br/>Max Graphemes: 2000 |
| `subject` | Union of:<br/>&nbsp;&nbsp;[`com.atproto.admin.defs#repoRef`](/com/atproto/admin/defs#repoRef)<br/>&nbsp;&nbsp;[`com.atproto.repo.strongRef`](/com/atproto/repo/strongref#undefined) | ✅  |  |  |
| `modTool` | [`#modTool`](#modtool) | ❌  |  |  |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `id` | `integer` | ✅  |  |  |
| `reasonType` | [`com.atproto.moderation.defs#reasonType`](/com/atproto/moderation/defs#reasonType) | ✅  |  |  |
| `reason` | `string` | ❌  |  | Max Length: 20000<br/>Max Graphemes: 2000 |
| `subject` | Union of:<br/>&nbsp;&nbsp;[`com.atproto.admin.defs#repoRef`](/com/atproto/admin/defs#repoRef)<br/>&nbsp;&nbsp;[`com.atproto.repo.strongRef`](/com/atproto/repo/strongref#undefined) | ✅  |  |  |
| `reportedBy` | `string` | ✅  |  | Format: `did` |
| `createdAt` | `string` | ✅  |  | Format: `datetime` |

---

<a name="modtool"></a>
### `modTool`

**Type:** `object`

Moderation tool information for tracing the source of the action

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `name` | `string` | ✅  | Name/identifier of the source (e.g., 'bsky-app/android', 'bsky-web/chrome') |  |
| `meta` | `unknown` | ❌  | Additional arbitrary metadata about the source |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.moderation.createReport",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Submit a moderation report regarding an atproto account or record. Implemented by moderation services (with PDS proxying), and requires auth.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "reasonType",
            "subject"
          ],
          "properties": {
            "reasonType": {
              "type": "ref",
              "description": "Indicates the broad category of violation the report is for.",
              "ref": "com.atproto.moderation.defs#reasonType"
            },
            "reason": {
              "type": "string",
              "maxGraphemes": 2000,
              "maxLength": 20000,
              "description": "Additional context about the content and violation."
            },
            "subject": {
              "type": "union",
              "refs": [
                "com.atproto.admin.defs#repoRef",
                "com.atproto.repo.strongRef"
              ]
            },
            "modTool": {
              "type": "ref",
              "ref": "#modTool"
            }
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "id",
            "reasonType",
            "subject",
            "reportedBy",
            "createdAt"
          ],
          "properties": {
            "id": {
              "type": "integer"
            },
            "reasonType": {
              "type": "ref",
              "ref": "com.atproto.moderation.defs#reasonType"
            },
            "reason": {
              "type": "string",
              "maxGraphemes": 2000,
              "maxLength": 20000
            },
            "subject": {
              "type": "union",
              "refs": [
                "com.atproto.admin.defs#repoRef",
                "com.atproto.repo.strongRef"
              ]
            },
            "reportedBy": {
              "type": "string",
              "format": "did"
            },
            "createdAt": {
              "type": "string",
              "format": "datetime"
            }
          }
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
          "description": "Name/identifier of the source (e.g., 'bsky-app/android', 'bsky-web/chrome')"
        },
        "meta": {
          "type": "unknown",
          "description": "Additional arbitrary metadata about the source"
        }
      }
    }
  }
}
```
