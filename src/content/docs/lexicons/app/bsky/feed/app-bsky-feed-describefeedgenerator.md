---
title: app.bsky.feed.describeFeedGenerator
description: Reference for the app.bsky.feed.describeFeedGenerator lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Get information about a feed generator, including policies and offered feed URIs. Does not require auth; implemented by Feed Generator services (not App View).

**Parameters:** _(None defined)_

**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `did` | `string` | ✅  |  | Format: `did` |
| `feeds` | Array of [`#feed`](#feed) | ✅  |  |  |
| `links` | [`#links`](#links) | ❌  |  |  |

---

<a name="feed"></a>
### `feed`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `uri` | `string` | ✅  |  | Format: `at-uri` |

---

<a name="links"></a>
### `links`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `privacyPolicy` | `string` | ❌  |  |  |
| `termsOfService` | `string` | ❌  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.feed.describeFeedGenerator",
  "defs": {
    "main": {
      "type": "query",
      "description": "Get information about a feed generator, including policies and offered feed URIs. Does not require auth; implemented by Feed Generator services (not App View).",
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "did",
            "feeds"
          ],
          "properties": {
            "did": {
              "type": "string",
              "format": "did"
            },
            "feeds": {
              "type": "array",
              "items": {
                "type": "ref",
                "ref": "#feed"
              }
            },
            "links": {
              "type": "ref",
              "ref": "#links"
            }
          }
        }
      }
    },
    "feed": {
      "type": "object",
      "required": [
        "uri"
      ],
      "properties": {
        "uri": {
          "type": "string",
          "format": "at-uri"
        }
      }
    },
    "links": {
      "type": "object",
      "properties": {
        "privacyPolicy": {
          "type": "string"
        },
        "termsOfService": {
          "type": "string"
        }
      }
    }
  }
}
```
