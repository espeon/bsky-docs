---
title: com.atproto.sync.notifyOfUpdate
description: Reference for the com.atproto.sync.notifyOfUpdate lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Notify a crawling service of a recent update, and that crawling should resume. Intended use is after a gap between repo stream events caused the crawling service to disconnect. Does not require auth; implemented by Relay. DEPRECATED: just use com.atproto.sync.requestCrawl

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `hostname` | `string` | ✅  | Hostname of the current service (usually a PDS) that is notifying of update. |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.sync.notifyOfUpdate",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Notify a crawling service of a recent update, and that crawling should resume. Intended use is after a gap between repo stream events caused the crawling service to disconnect. Does not require auth; implemented by Relay. DEPRECATED: just use com.atproto.sync.requestCrawl",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "hostname"
          ],
          "properties": {
            "hostname": {
              "type": "string",
              "description": "Hostname of the current service (usually a PDS) that is notifying of update."
            }
          }
        }
      }
    }
  }
}
```
