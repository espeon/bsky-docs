---
title: com.atproto.sync.getHostStatus
description: Reference for the com.atproto.sync.getHostStatus lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Returns information about a specified upstream host, as consumed by the server. Implemented by relays.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `hostname` | `string` | ✅  | Hostname of the host (eg, PDS or relay) being queried. |  |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `hostname` | `string` | ✅  |  |  |
| `seq` | `integer` | ❌  | Recent repo stream event sequence number. May be delayed from actual stream processing (eg, persisted cursor not in-memory cursor). |  |
| `accountCount` | `integer` | ❌  | Number of accounts on the server which are associated with the upstream host. Note that the upstream may actually have more accounts. |  |
| `status` | [`com.atproto.sync.defs#hostStatus`](/com/atproto/sync/defs#hostStatus) | ❌  |  |  |
**Possible Errors:**

- `HostNotFound`

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.sync.getHostStatus",
  "defs": {
    "main": {
      "type": "query",
      "description": "Returns information about a specified upstream host, as consumed by the server. Implemented by relays.",
      "parameters": {
        "type": "params",
        "required": [
          "hostname"
        ],
        "properties": {
          "hostname": {
            "type": "string",
            "description": "Hostname of the host (eg, PDS or relay) being queried."
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "hostname"
          ],
          "properties": {
            "hostname": {
              "type": "string"
            },
            "seq": {
              "type": "integer",
              "description": "Recent repo stream event sequence number. May be delayed from actual stream processing (eg, persisted cursor not in-memory cursor)."
            },
            "accountCount": {
              "type": "integer",
              "description": "Number of accounts on the server which are associated with the upstream host. Note that the upstream may actually have more accounts."
            },
            "status": {
              "type": "ref",
              "ref": "com.atproto.sync.defs#hostStatus"
            }
          }
        }
      },
      "errors": [
        {
          "name": "HostNotFound"
        }
      ]
    }
  }
}
```
