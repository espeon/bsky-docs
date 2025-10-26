---
title: tools.ozone.setting.removeOptions
description: Reference for the tools.ozone.setting.removeOptions lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="main"></a>
### `main`

**Type:** `procedure`

Delete settings by key

**Parameters:** _(None defined)_

**Input:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `keys` | Array of `string` | ✅  |  | Min Items: 1<br/>Max Items: 200 |
| `scope` | `string` | ✅  |  | Known Values: `instance`, `personal` |
**Output:**

- **Encoding:** `application/json`
- **Schema:**

**Schema Type:** `object`

_(No properties defined)_

---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "tools.ozone.setting.removeOptions",
  "defs": {
    "main": {
      "type": "procedure",
      "description": "Delete settings by key",
      "input": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "required": [
            "keys",
            "scope"
          ],
          "properties": {
            "keys": {
              "type": "array",
              "minLength": 1,
              "maxLength": 200,
              "items": {
                "type": "string",
                "format": "nsid"
              }
            },
            "scope": {
              "type": "string",
              "knownValues": [
                "instance",
                "personal"
              ]
            }
          }
        }
      },
      "output": {
        "encoding": "application/json",
        "schema": {
          "type": "object",
          "properties": {}
        }
      }
    }
  }
}
```
