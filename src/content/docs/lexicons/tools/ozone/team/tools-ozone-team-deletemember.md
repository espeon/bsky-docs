---
title: tools.ozone.team.deleteMember
description: Reference for the tools.ozone.team.deleteMember lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Delete a member from ozone team. Requires admin role.

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `did` | `string` | ✅  |  | Format: `did` |
**Possible Errors:**

- `MemberNotFound`: The member being deleted does not exist
- `CannotDeleteSelf`: You can not delete yourself from the team

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "tools.ozone.team.deleteMember",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Delete a member from ozone team. Requires admin role.",
      "input": {
        "encoding": "application/json",
        "schema": {
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
        }
      },
      "errors": [
        {
          "name": "MemberNotFound",
          "description": "The member being deleted does not exist"
        },
        {
          "name": "CannotDeleteSelf",
          "description": "You can not delete yourself from the team"
        }
      ]
    }
  }
}
```
