---
title: com.atproto.sync.listHosts
description: Reference for the com.atproto.sync.listHosts lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Enumerates upstream hosts (eg, PDS or relay instances) that this service consumes from. Implemented by relays.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `limit` | `integer` | ❌  |  | Min: 1<br/>Max: 1000<br/>Default: `200` |
| `cursor` | `string` | ❌  |  |  |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `cursor` | `string` | ❌  |  |  |
| `hosts` | Array of [`#host`](#host) | ✅  | Sort order is not formally specified. Recommended order is by time host was first seen by the server, with oldest first. |  |

---

<a name="host"></a>
### `host`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `hostname` | `string` | ✅  | hostname of server; not a URL (no scheme) |  |
| `seq` | `integer` | ❌  | Recent repo stream event sequence number. May be delayed from actual stream processing (eg, persisted cursor not in-memory cursor). |  |
| `accountCount` | `integer` | ❌  |  |  |
| `status` | [`com.atproto.sync.defs#hostStatus`](lexicons/com/atproto/sync/defs#hostStatus) | ❌  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.sync.listHosts",
  "defs": {
    "main": {
      "type": "query",
      "description": "Enumerates upstream hosts (eg, PDS or relay instances) that this service consumes from. Implemented by relays.",
      "parameters": {
        "type": "params",
        "properties": {
          "limit": {
            "type": "integer",
            "minimum": 1,
            "maximum": 1000,
            "default": 200
          },
          "cursor": {
            "type": "string"
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "hosts"
          ],
          "properties": {
            "cursor": {
              "type": "string"
            },
            "hosts": {
              "type": "array",
              "items": {
                "type": "ref",
                "ref": "#host"
              },
              "description": "Sort order is not formally specified. Recommended order is by time host was first seen by the server, with oldest first."
            }
          }
        }
      }
    },
    "host": {
      "type": "object",
      "required": [
        "hostname"
      ],
      "properties": {
        "hostname": {
          "type": "string",
          "description": "hostname of server; not a URL (no scheme)"
        },
        "seq": {
          "type": "integer",
          "description": "Recent repo stream event sequence number. May be delayed from actual stream processing (eg, persisted cursor not in-memory cursor)."
        },
        "accountCount": {
          "type": "integer"
        },
        "status": {
          "type": "ref",
          "ref": "com.atproto.sync.defs#hostStatus"
        }
      }
    }
  }
}
```
