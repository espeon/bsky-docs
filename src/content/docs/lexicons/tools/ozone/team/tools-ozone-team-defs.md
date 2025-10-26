---
title: tools.ozone.team.defs
description: Reference for the tools.ozone.team.defs lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="member"></a>
### `member`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `did` | `string` | ✅  |  | Format: `did` |
| `disabled` | `boolean` | ❌  |  |  |
| `profile` | [`app.bsky.actor.defs#profileViewDetailed`](lexicons/app/bsky/actor/defs#profileViewDetailed) | ❌  |  |  |
| `createdAt` | `string` | ❌  |  | Format: `datetime` |
| `updatedAt` | `string` | ❌  |  | Format: `datetime` |
| `lastUpdatedBy` | `string` | ❌  |  |  |
| `role` | `string` | ✅  |  | Known Values: `#roleAdmin`, `#roleModerator`, `#roleTriage`, `#roleVerifier` |

---

<a name="roleadmin"></a>
### `roleAdmin`

**Type:** `token`

Admin role. Highest level of access, can perform all actions.


---

<a name="rolemoderator"></a>
### `roleModerator`

**Type:** `token`

Moderator role. Can perform most actions.


---

<a name="roletriage"></a>
### `roleTriage`

**Type:** `token`

Triage role. Mostly intended for monitoring and escalating issues.


---

<a name="roleverifier"></a>
### `roleVerifier`

**Type:** `token`

Verifier role. Only allowed to issue verifications.


---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "tools.ozone.team.defs",
  "defs": {
    "member": {
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
        "disabled": {
          "type": "boolean"
        },
        "profile": {
          "type": "ref",
          "ref": "app.bsky.actor.defs#profileViewDetailed"
        },
        "createdAt": {
          "type": "string",
          "format": "datetime"
        },
        "updatedAt": {
          "type": "string",
          "format": "datetime"
        },
        "lastUpdatedBy": {
          "type": "string"
        },
        "role": {
          "type": "string",
          "knownValues": [
            "#roleAdmin",
            "#roleModerator",
            "#roleTriage",
            "#roleVerifier"
          ]
        }
      }
    },
    "roleAdmin": {
      "type": "token",
      "description": "Admin role. Highest level of access, can perform all actions."
    },
    "roleModerator": {
      "type": "token",
      "description": "Moderator role. Can perform most actions."
    },
    "roleTriage": {
      "type": "token",
      "description": "Triage role. Mostly intended for monitoring and escalating issues."
    },
    "roleVerifier": {
      "type": "token",
      "description": "Verifier role. Only allowed to issue verifications."
    }
  }
}
```
