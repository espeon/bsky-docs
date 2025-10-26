---
title: com.atproto.sync.requestCrawl
description: Reference for the com.atproto.sync.requestCrawl lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Request a service to persistently crawl hosted repos. Expected use is new PDS instances declaring their existence to Relays. Does not require auth.

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `hostname` | `string` | ✅  | Hostname of the current service (eg, PDS) that is requesting to be crawled. |  |
**Possible Errors:**

- `HostBanned`

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.sync.requestCrawl",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Request a service to persistently crawl hosted repos. Expected use is new PDS instances declaring their existence to Relays. Does not require auth.",
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
              "description": "Hostname of the current service (eg, PDS) that is requesting to be crawled."
            }
          }
        }
      },
      "errors": [
        {
          "name": "HostBanned"
        }
      ]
    }
  }
}
```
