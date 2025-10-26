---
title: com.atproto.server.reserveSigningKey
description: Reference for the com.atproto.server.reserveSigningKey lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Reserve a repo signing key, for use with account creation. Necessary so that a DID PLC update operation can be constructed during an account migraiton. Public and does not require auth; implemented by PDS. NOTE: this endpoint may change when full account migration is implemented.

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `did` | `string` | ❌  | The DID to reserve a key for. | Format: `did` |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `signingKey` | `string` | ✅  | The public key for the reserved signing key, in did:key serialization. |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.server.reserveSigningKey",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Reserve a repo signing key, for use with account creation. Necessary so that a DID PLC update operation can be constructed during an account migraiton. Public and does not require auth; implemented by PDS. NOTE: this endpoint may change when full account migration is implemented.",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "properties": {
            "did": {
              "type": "string",
              "format": "did",
              "description": "The DID to reserve a key for."
            }
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "signingKey"
          ],
          "properties": {
            "signingKey": {
              "type": "string",
              "description": "The public key for the reserved signing key, in did:key serialization."
            }
          }
        }
      }
    }
  }
}
```
