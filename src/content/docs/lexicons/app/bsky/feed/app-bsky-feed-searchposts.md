---
title: app.bsky.feed.searchPosts
description: Reference for the app.bsky.feed.searchPosts lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Find posts matching search criteria, returning views of those posts. Note that this API endpoint may require authentication (eg, not public) for some service providers and implementations.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `q` | `string` | ✅  | Search query string; syntax, phrase, boolean, and faceting is unspecified, but Lucene query syntax is recommended. |  |
| `sort` | `string` | ❌  | Specifies the ranking order of results. | Known Values: `top`, `latest`<br/>Default: `latest` |
| `since` | `string` | ❌  | Filter results for posts after the indicated datetime (inclusive). Expected to use 'sortAt' timestamp, which may not match 'createdAt'. Can be a datetime, or just an ISO date (YYYY-MM-DD). |  |
| `until` | `string` | ❌  | Filter results for posts before the indicated datetime (not inclusive). Expected to use 'sortAt' timestamp, which may not match 'createdAt'. Can be a datetime, or just an ISO date (YYY-MM-DD). |  |
| `mentions` | `string` | ❌  | Filter to posts which mention the given account. Handles are resolved to DID before query-time. Only matches rich-text facet mentions. | Format: `at-identifier` |
| `author` | `string` | ❌  | Filter to posts by the given account. Handles are resolved to DID before query-time. | Format: `at-identifier` |
| `lang` | `string` | ❌  | Filter to posts in the given language. Expected to be based on post language field, though server may override language detection. | Format: `language` |
| `domain` | `string` | ❌  | Filter to posts with URLs (facet links or embeds) linking to the given domain (hostname). Server may apply hostname normalization. |  |
| `url` | `string` | ❌  | Filter to posts with links (facet links or embeds) pointing to this URL. Server may apply URL normalization or fuzzy matching. | Format: `uri` |
| `tag` | Array of `string` | ❌  | Filter to posts with the given tag (hashtag), based on rich-text facet or tag field. Do not include the hash (#) prefix. Multiple tags can be specified, with 'AND' matching. |  |
| `limit` | `integer` | ❌  |  | Min: 1<br/>Max: 100<br/>Default: `25` |
| `cursor` | `string` | ❌  | Optional pagination mechanism; may not necessarily allow scrolling through entire result set. |  |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `cursor` | `string` | ❌  |  |  |
| `hitsTotal` | `integer` | ❌  | Count of search hits. Optional, may be rounded/truncated, and may not be possible to paginate through all hits. |  |
| `posts` | Array of [`app.bsky.feed.defs#postView`](/app/bsky/feed/defs#postView) | ✅  |  |  |
**Possible Errors:**

- `BadQueryString`

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.feed.searchPosts",
  "defs": {
    "main": {
      "type": "query",
      "description": "Find posts matching search criteria, returning views of those posts. Note that this API endpoint may require authentication (eg, not public) for some service providers and implementations.",
      "parameters": {
        "type": "params",
        "required": [
          "q"
        ],
        "properties": {
          "q": {
            "type": "string",
            "description": "Search query string; syntax, phrase, boolean, and faceting is unspecified, but Lucene query syntax is recommended."
          },
          "sort": {
            "type": "string",
            "knownValues": [
              "top",
              "latest"
            ],
            "default": "latest",
            "description": "Specifies the ranking order of results."
          },
          "since": {
            "type": "string",
            "description": "Filter results for posts after the indicated datetime (inclusive). Expected to use 'sortAt' timestamp, which may not match 'createdAt'. Can be a datetime, or just an ISO date (YYYY-MM-DD)."
          },
          "until": {
            "type": "string",
            "description": "Filter results for posts before the indicated datetime (not inclusive). Expected to use 'sortAt' timestamp, which may not match 'createdAt'. Can be a datetime, or just an ISO date (YYY-MM-DD)."
          },
          "mentions": {
            "type": "string",
            "format": "at-identifier",
            "description": "Filter to posts which mention the given account. Handles are resolved to DID before query-time. Only matches rich-text facet mentions."
          },
          "author": {
            "type": "string",
            "format": "at-identifier",
            "description": "Filter to posts by the given account. Handles are resolved to DID before query-time."
          },
          "lang": {
            "type": "string",
            "format": "language",
            "description": "Filter to posts in the given language. Expected to be based on post language field, though server may override language detection."
          },
          "domain": {
            "type": "string",
            "description": "Filter to posts with URLs (facet links or embeds) linking to the given domain (hostname). Server may apply hostname normalization."
          },
          "url": {
            "type": "string",
            "format": "uri",
            "description": "Filter to posts with links (facet links or embeds) pointing to this URL. Server may apply URL normalization or fuzzy matching."
          },
          "tag": {
            "type": "array",
            "items": {
              "type": "string",
              "maxLength": 640,
              "maxGraphemes": 64
            },
            "description": "Filter to posts with the given tag (hashtag), based on rich-text facet or tag field. Do not include the hash (#) prefix. Multiple tags can be specified, with 'AND' matching."
          },
          "limit": {
            "type": "integer",
            "minimum": 1,
            "maximum": 100,
            "default": 25
          },
          "cursor": {
            "type": "string",
            "description": "Optional pagination mechanism; may not necessarily allow scrolling through entire result set."
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "posts"
          ],
          "properties": {
            "cursor": {
              "type": "string"
            },
            "hitsTotal": {
              "type": "integer",
              "description": "Count of search hits. Optional, may be rounded/truncated, and may not be possible to paginate through all hits."
            },
            "posts": {
              "type": "array",
              "items": {
                "type": "ref",
                "ref": "app.bsky.feed.defs#postView"
              }
            }
          }
        }
      },
      "errors": [
        {
          "name": "BadQueryString"
        }
      ]
    }
  }
}
```
