---
title: com.atproto.server.getAccountInviteCodes
description: Reference for the com.atproto.server.getAccountInviteCodes lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Get all invite codes for the current account. Requires auth.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `includeUsed` | `boolean` | ❌  |  | Default: `true` |
| `createAvailable` | `boolean` | ❌  | Controls whether any new 'earned' but not 'created' invites should be created. | Default: `true` |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `codes` | Array of [`com.atproto.server.defs#inviteCode`](lexicons/com/atproto/server/defs#inviteCode) | ✅  |  |  |
**Possible Errors:**

- `DuplicateCreate`

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.server.getAccountInviteCodes",
  "defs": {
    "main": {
      "type": "query",
      "description": "Get all invite codes for the current account. Requires auth.",
      "parameters": {
        "type": "params",
        "properties": {
          "includeUsed": {
            "type": "boolean",
            "default": true
          },
          "createAvailable": {
            "type": "boolean",
            "default": true,
            "description": "Controls whether any new 'earned' but not 'created' invites should be created."
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "codes"
          ],
          "properties": {
            "codes": {
              "type": "array",
              "items": {
                "type": "ref",
                "ref": "com.atproto.server.defs#inviteCode"
              }
            }
          }
        }
      },
      "errors": [
        {
          "name": "DuplicateCreate"
        }
      ]
    }
  }
}
```
