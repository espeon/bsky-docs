---
title: com.atproto.identity.resolveIdentity
description: Reference for the com.atproto.identity.resolveIdentity lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Resolves an identity (DID or Handle) to a full identity (DID document and verified handle).

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `identifier` | `string` | ✅  | Handle or DID to resolve. | Format: `at-identifier` |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** [`com.atproto.identity.defs#identityInfo`](/lexicons/com/atproto/identity/com-atproto-identity-defs#identityinfo)


**Possible Errors:**

- `HandleNotFound`: The resolution process confirmed that the handle does not resolve to any DID.
- `DidNotFound`: The DID resolution process confirmed that there is no current DID.
- `DidDeactivated`: The DID previously existed, but has been deactivated.

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.identity.resolveIdentity",
  "defs": {
    "main": {
      "type": "query",
      "description": "Resolves an identity (DID or Handle) to a full identity (DID document and verified handle).",
      "parameters": {
        "type": "params",
        "required": [
          "identifier"
        ],
        "properties": {
          "identifier": {
            "type": "string",
            "format": "at-identifier",
            "description": "Handle or DID to resolve."
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "ref",
          "ref": "com.atproto.identity.defs#identityInfo"
        }
      },
      "errors": [
        {
          "name": "HandleNotFound",
          "description": "The resolution process confirmed that the handle does not resolve to any DID."
        },
        {
          "name": "DidNotFound",
          "description": "The DID resolution process confirmed that there is no current DID."
        },
        {
          "name": "DidDeactivated",
          "description": "The DID previously existed, but has been deactivated."
        }
      ]
    }
  }
}
```
