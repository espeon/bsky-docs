---
title: com.atproto.admin.getSubjectStatus
description: Reference for the com.atproto.admin.getSubjectStatus lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Get the service-specific admin status of a subject (account, record, or blob).

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `did` | `string` | ❌  |  | Format: `did` |
| `uri` | `string` | ❌  |  | Format: `at-uri` |
| `blob` | `string` | ❌  |  | Format: `cid` |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `subject` | Union of:<br/>&nbsp;&nbsp;[`com.atproto.admin.defs#repoRef`](/lexicons/com/atproto/admin/com-atproto-admin-defs#reporef)<br/>&nbsp;&nbsp;[`com.atproto.repo.strongRef`](/lexicons/com/atproto/repo/com-atproto-repo-strongref)<br/>&nbsp;&nbsp;[`com.atproto.admin.defs#repoBlobRef`](/lexicons/com/atproto/admin/com-atproto-admin-defs#repoblobref) | ✅  |  |  |
| `takedown` | [`com.atproto.admin.defs#statusAttr`](/lexicons/com/atproto/admin/com-atproto-admin-defs#statusattr) | ❌  |  |  |
| `deactivated` | [`com.atproto.admin.defs#statusAttr`](/lexicons/com/atproto/admin/com-atproto-admin-defs#statusattr) | ❌  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.admin.getSubjectStatus",
  "defs": {
    "main": {
      "type": "query",
      "description": "Get the service-specific admin status of a subject (account, record, or blob).",
      "parameters": {
        "type": "params",
        "properties": {
          "did": {
            "type": "string",
            "format": "did"
          },
          "uri": {
            "type": "string",
            "format": "at-uri"
          },
          "blob": {
            "type": "string",
            "format": "cid"
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
            },
            "deactivated": {
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
