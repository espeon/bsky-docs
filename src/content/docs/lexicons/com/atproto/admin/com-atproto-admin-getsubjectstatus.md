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
| `subject` | Union of:<br/>&nbsp;&nbsp;[`com.atproto.admin.defs#repoRef`](/com/atproto/admin/defs#repoRef)<br/>&nbsp;&nbsp;[`com.atproto.repo.strongRef`](/com/atproto/repo/strongref#undefined)<br/>&nbsp;&nbsp;[`com.atproto.admin.defs#repoBlobRef`](/com/atproto/admin/defs#repoBlobRef) | ✅  |  |  |
| `takedown` | [`com.atproto.admin.defs#statusAttr`](/com/atproto/admin/defs#statusAttr) | ❌  |  |  |
| `deactivated` | [`com.atproto.admin.defs#statusAttr`](/com/atproto/admin/defs#statusAttr) | ❌  |  |  |

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
