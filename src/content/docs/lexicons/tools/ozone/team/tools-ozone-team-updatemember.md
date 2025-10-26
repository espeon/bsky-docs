---
title: tools.ozone.team.updateMember
description: Reference for the tools.ozone.team.updateMember lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Update a member in the ozone service. Requires admin role.

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `did` | `string` | ✅  |  | Format: `did` |
| `disabled` | `boolean` | ❌  |  |  |
| `role` | `string` | ❌  |  | Known Values: `tools.ozone.team.defs#roleAdmin`, `tools.ozone.team.defs#roleModerator`, `tools.ozone.team.defs#roleVerifier`, `tools.ozone.team.defs#roleTriage` |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** [`tools.ozone.team.defs#member`](/lexicons/tools/ozone/team/tools-ozone-team-defs#member)


**Possible Errors:**

- `MemberNotFound`: The member being updated does not exist in the team

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "tools.ozone.team.updateMember",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Update a member in the ozone service. Requires admin role.",
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
            },
            "disabled": {
              "type": "boolean"
            },
            "role": {
              "type": "string",
              "knownValues": [
                "tools.ozone.team.defs#roleAdmin",
                "tools.ozone.team.defs#roleModerator",
                "tools.ozone.team.defs#roleVerifier",
                "tools.ozone.team.defs#roleTriage"
              ]
            }
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "ref",
          "ref": "tools.ozone.team.defs#member"
        }
      },
      "errors": [
        {
          "name": "MemberNotFound",
          "description": "The member being updated does not exist in the team"
        }
      ]
    }
  }
}
```
