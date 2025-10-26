---
title: app.bsky.video.defs
description: Reference for the app.bsky.video.defs lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="jobstatus"></a>
### `jobStatus`

**Type:** `object`

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `jobId` | `string` | ✅  |  |  |
| `did` | `string` | ✅  |  | Format: `did` |
| `state` | `string` | ✅  | The state of the video processing job. All values not listed as a known value indicate that the job is in process. | Known Values: `JOB_STATE_COMPLETED`, `JOB_STATE_FAILED` |
| `progress` | `integer` | ❌  | Progress within the current processing state. | Min: 0<br/>Max: 100 |
| `blob` | `blob` | ❌  |  |  |
| `error` | `string` | ❌  |  |  |
| `message` | `string` | ❌  |  |  |

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "app.bsky.video.defs",
  "defs": {
    "jobStatus": {
      "type": "object",
      "required": [
        "jobId",
        "did",
        "state"
      ],
      "properties": {
        "jobId": {
          "type": "string"
        },
        "did": {
          "type": "string",
          "format": "did"
        },
        "state": {
          "type": "string",
          "description": "The state of the video processing job. All values not listed as a known value indicate that the job is in process.",
          "knownValues": [
            "JOB_STATE_COMPLETED",
            "JOB_STATE_FAILED"
          ]
        },
        "progress": {
          "type": "integer",
          "minimum": 0,
          "maximum": 100,
          "description": "Progress within the current processing state."
        },
        "blob": {
          "type": "blob"
        },
        "error": {
          "type": "string"
        },
        "message": {
          "type": "string"
        }
      }
    }
  }
}
```
