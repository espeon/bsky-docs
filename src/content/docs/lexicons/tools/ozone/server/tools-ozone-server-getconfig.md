---
title: tools.ozone.server.getConfig
description: Reference for the tools.ozone.server.getConfig lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Get details about ozone's server configuration.

**Parameters:** _(None defined)_

**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `appview` | [`#serviceConfig`](#serviceconfig) | ❌  |  |  |
| `pds` | [`#serviceConfig`](#serviceconfig) | ❌  |  |  |
| `blobDivert` | [`#serviceConfig`](#serviceconfig) | ❌  |  |  |
| `chat` | [`#serviceConfig`](#serviceconfig) | ❌  |  |  |
| `viewer` | [`#viewerConfig`](#viewerconfig) | ❌  |  |  |
| `verifierDid` | `string` | ❌  | The did of the verifier used for verification. | Format: `did` |

---

<a name="serviceconfig"></a>
### `serviceConfig`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `url` | `string` | ❌  |  | Format: `uri` |

---

<a name="viewerconfig"></a>
### `viewerConfig`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `role` | `string` | ❌  |  | Known Values: `tools.ozone.team.defs#roleAdmin`, `tools.ozone.team.defs#roleModerator`, `tools.ozone.team.defs#roleTriage`, `tools.ozone.team.defs#roleVerifier` |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "tools.ozone.server.getConfig",
  "defs": {
    "main": {
      "type": "query",
      "description": "Get details about ozone's server configuration.",
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "properties": {
            "appview": {
              "type": "ref",
              "ref": "#serviceConfig"
            },
            "pds": {
              "type": "ref",
              "ref": "#serviceConfig"
            },
            "blobDivert": {
              "type": "ref",
              "ref": "#serviceConfig"
            },
            "chat": {
              "type": "ref",
              "ref": "#serviceConfig"
            },
            "viewer": {
              "type": "ref",
              "ref": "#viewerConfig"
            },
            "verifierDid": {
              "type": "string",
              "format": "did",
              "description": "The did of the verifier used for verification."
            }
          }
        }
      }
    },
    "serviceConfig": {
      "type": "object",
      "properties": {
        "url": {
          "type": "string",
          "format": "uri"
        }
      }
    },
    "viewerConfig": {
      "type": "object",
      "properties": {
        "role": {
          "type": "string",
          "knownValues": [
            "tools.ozone.team.defs#roleAdmin",
            "tools.ozone.team.defs#roleModerator",
            "tools.ozone.team.defs#roleTriage",
            "tools.ozone.team.defs#roleVerifier"
          ]
        }
      }
    }
  }
}
```
