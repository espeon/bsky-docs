---
title: app.bsky.video.getJobStatus
description: Reference for the app.bsky.video.getJobStatus lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `query`

Get status details for a video processing job.

**Parameters:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `jobId` | `string` | ✅  |  |  |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `jobStatus` | [`app.bsky.video.defs#jobStatus`](/app/bsky/video/defs#jobStatus) | ✅  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.video.getJobStatus",
  "defs": {
    "main": {
      "type": "query",
      "description": "Get status details for a video processing job.",
      "parameters": {
        "type": "params",
        "required": [
          "jobId"
        ],
        "properties": {
          "jobId": {
            "type": "string"
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "jobStatus"
          ],
          "properties": {
            "jobStatus": {
              "type": "ref",
              "ref": "app.bsky.video.defs#jobStatus"
            }
          }
        }
      }
    }
  }
}
```
