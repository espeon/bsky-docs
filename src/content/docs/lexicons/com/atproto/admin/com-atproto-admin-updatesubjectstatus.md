---
title: com.atproto.admin.updateSubjectStatus
description: Reference for the com.atproto.admin.updateSubjectStatus lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Update the service-specific admin status of a subject (account, record, or blob).

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `subject` | Union of:<br/>&nbsp;&nbsp;[`com.atproto.admin.defs#repoRef`](/com/atproto/admin/defs#repoRef)<br/>&nbsp;&nbsp;[`com.atproto.repo.strongRef`](/com/atproto/repo/strongref#undefined)<br/>&nbsp;&nbsp;[`com.atproto.admin.defs#repoBlobRef`](/com/atproto/admin/defs#repoBlobRef) | ✅  |  |  |
| `takedown` | [`com.atproto.admin.defs#statusAttr`](/com/atproto/admin/defs#statusAttr) | ❌  |  |  |
| `deactivated` | [`com.atproto.admin.defs#statusAttr`](/com/atproto/admin/defs#statusAttr) | ❌  |  |  |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `subject` | Union of:<br/>&nbsp;&nbsp;[`com.atproto.admin.defs#repoRef`](/com/atproto/admin/defs#repoRef)<br/>&nbsp;&nbsp;[`com.atproto.repo.strongRef`](/com/atproto/repo/strongref#undefined)<br/>&nbsp;&nbsp;[`com.atproto.admin.defs#repoBlobRef`](/com/atproto/admin/defs#repoBlobRef) | ✅  |  |  |
| `takedown` | [`com.atproto.admin.defs#statusAttr`](/com/atproto/admin/defs#statusAttr) | ❌  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.admin.updateSubjectStatus",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Update the service-specific admin status of a subject (account, record, or blob).",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "subject"
          ],
          "properties": {
            "subject": {
              "type": "union",
              "refs": [
                "com.atproto.admin.defs#repoRef",
                "com.atproto.repo.strongRef",
                "com.atproto.admin.defs#repoBlobRef"
              ]
            },
            "takedown": {
              "type": "ref",
              "ref": "com.atproto.admin.defs#statusAttr"
            },
            "deactivated": {
              "type": "ref",
              "ref": "com.atproto.admin.defs#statusAttr"
            }
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "subject"
          ],
          "properties": {
            "subject": {
              "type": "union",
              "refs": [
                "com.atproto.admin.defs#repoRef",
                "com.atproto.repo.strongRef",
                "com.atproto.admin.defs#repoBlobRef"
              ]
            },
            "takedown": {
              "type": "ref",
              "ref": "com.atproto.admin.defs#statusAttr"
            }
          }
        }
      }
    }
  }
}
```
