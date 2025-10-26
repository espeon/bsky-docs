---
title: com.atproto.server.deactivateAccount
description: Reference for the com.atproto.server.deactivateAccount lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Deactivates a currently active account. Stops serving of repo, and future writes to repo until reactivated. Used to finalize account migration with the old host after the account has been activated on the new host.

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `deleteAfter` | `string` | ❌  | A recommendation to server as to how long they should hold onto the deactivated account before deleting. | Format: `datetime` |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.server.deactivateAccount",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Deactivates a currently active account. Stops serving of repo, and future writes to repo until reactivated. Used to finalize account migration with the old host after the account has been activated on the new host.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "properties": {
            "deleteAfter": {
              "type": "string",
              "format": "datetime",
              "description": "A recommendation to server as to how long they should hold onto the deactivated account before deleting."
            }
          }
        }
      }
    }
  }
}
```
