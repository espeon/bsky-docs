---
title: tools.ozone.team.addMember
description: Reference for the tools.ozone.team.addMember lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Add a member to the ozone team. Requires admin role.

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `did` | `string` | ✅  |  | Format: `did` |
| `role` | `string` | ✅  |  | Known Values: `tools.ozone.team.defs#roleAdmin`, `tools.ozone.team.defs#roleModerator`, `tools.ozone.team.defs#roleVerifier`, `tools.ozone.team.defs#roleTriage` |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** [`tools.ozone.team.defs#member`](/lexicons/tools/ozone/team/defs#member)


**Possible Errors:**

- `MemberAlreadyExists`: Member already exists in the team.

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "tools.ozone.team.addMember",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Add a member to the ozone team. Requires admin role.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "did",
            "role"
          ],
          "properties": {
            "did": {
              "type": "string",
              "format": "did"
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
          "name": "MemberAlreadyExists",
          "description": "Member already exists in the team."
        }
      ]
    }
  }
}
```
