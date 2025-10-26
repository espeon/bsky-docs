---
title: com.atproto.label.defs
description: Reference for the com.atproto.label.defs lexicon
---
**Lexicon Version:** 1

## Definitions

<a name="label"></a>
### `label`

**Type:** `object`

Metadata tag on an atproto resource (eg, repo or record).

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `ver` | `integer` | ❌  | The AT Protocol version of the label object. |  |
| `src` | `string` | ✅  | DID of the actor who created this label. | Format: `did` |
| `uri` | `string` | ✅  | AT URI of the record, repository (account), or other resource that this label applies to. | Format: `uri` |
| `cid` | `string` | ❌  | Optionally, CID specifying the specific version of 'uri' resource this label applies to. | Format: `cid` |
| `val` | `string` | ✅  | The short string name of the value or type of this label. | Max Length: 128 |
| `neg` | `boolean` | ❌  | If true, this is a negation label, overwriting a previous label. |  |
| `cts` | `string` | ✅  | Timestamp when this label was created. | Format: `datetime` |
| `exp` | `string` | ❌  | Timestamp at which this label expires (no longer applies). | Format: `datetime` |
| `sig` | `bytes` | ❌  | Signature of dag-cbor encoded label. |  |

---

<a name="selflabels"></a>
### `selfLabels`

**Type:** `object`

Metadata tags on an atproto record, published by the author within the record.

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `values` | Array of [`#selfLabel`](#selflabel) | ✅  |  | Max Items: 10 |

---

<a name="selflabel"></a>
### `selfLabel`

**Type:** `object`

Metadata tag on an atproto record, published by the author within the record. Note that schemas should use #selfLabels, not #selfLabel.

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `val` | `string` | ✅  | The short string name of the value or type of this label. | Max Length: 128 |

---

<a name="labelvaluedefinition"></a>
### `labelValueDefinition`

**Type:** `object`

Declares a label value and its expected interpretations and behaviors.

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `identifier` | `string` | ✅  | The value of the label being defined. Must only include lowercase ascii and the '-' character ([a-z-]+). | Max Length: 100<br/>Max Graphemes: 100 |
| `severity` | `string` | ✅  | How should a client visually convey this label? 'inform' means neutral and informational; 'alert' means negative and warning; 'none' means show nothing. | Known Values: `inform`, `alert`, `none` |
| `blurs` | `string` | ✅  | What should this label hide in the UI, if applied? 'content' hides all of the target; 'media' hides the images/video/audio; 'none' hides nothing. | Known Values: `content`, `media`, `none` |
| `defaultSetting` | `string` | ❌  | The default setting for this label. | Known Values: `ignore`, `warn`, `hide`<br/>Default: `warn` |
| `adultOnly` | `boolean` | ❌  | Does the user need to have adult content enabled in order to configure this label? |  |
| `locales` | Array of [`#labelValueDefinitionStrings`](#labelvaluedefinitionstrings) | ✅  |  |  |

---

<a name="labelvaluedefinitionstrings"></a>
### `labelValueDefinitionStrings`

**Type:** `object`

Strings which describe the label in the UI, localized into a specific language.

**Properties:**

| Name | Type | Req'd  | Description | Constraints |
|------|------|----------|-------------|-------------|
| `lang` | `string` | ✅  | The code of the language these strings are written in. | Format: `language` |
| `name` | `string` | ✅  | A short human-readable name for the label. | Max Length: 640<br/>Max Graphemes: 64 |
| `description` | `string` | ✅  | A longer description of what the label means and why it might be applied. | Max Length: 100000<br/>Max Graphemes: 10000 |

---

<a name="labelvalue"></a>
### `labelValue`

**Type:** `string`

**Constraints:**<br/>Known Values: `!hide`, `!no-promote`, `!warn`, `!no-unauthenticated`, `dmca-violation`, `doxxing`, `porn`, `sexual`, `nudity`, `nsfl`, `gore`


---

## Lexicon Source
```json
{
  "lexicon": 1,
  "id": "com.atproto.label.defs",
  "defs": {
    "label": {
      "type": "object",
      "description": "Metadata tag on an atproto resource (eg, repo or record).",
      "required": [
        "src",
        "uri",
        "val",
        "cts"
      ],
      "properties": {
        "ver": {
          "type": "integer",
          "description": "The AT Protocol version of the label object."
        },
        "src": {
          "type": "string",
          "format": "did",
          "description": "DID of the actor who created this label."
        },
        "uri": {
          "type": "string",
          "format": "uri",
          "description": "AT URI of the record, repository (account), or other resource that this label applies to."
        },
        "cid": {
          "type": "string",
          "format": "cid",
          "description": "Optionally, CID specifying the specific version of 'uri' resource this label applies to."
        },
        "val": {
          "type": "string",
          "maxLength": 128,
          "description": "The short string name of the value or type of this label."
        },
        "neg": {
          "type": "boolean",
          "description": "If true, this is a negation label, overwriting a previous label."
        },
        "cts": {
          "type": "string",
          "format": "datetime",
          "description": "Timestamp when this label was created."
        },
        "exp": {
          "type": "string",
          "format": "datetime",
          "description": "Timestamp at which this label expires (no longer applies)."
        },
        "sig": {
          "type": "bytes",
          "description": "Signature of dag-cbor encoded label."
        }
      }
    },
    "selfLabels": {
      "type": "object",
      "description": "Metadata tags on an atproto record, published by the author within the record.",
      "required": [
        "values"
      ],
      "properties": {
        "values": {
          "type": "array",
          "items": {
            "type": "ref",
            "ref": "#selfLabel"
          },
          "maxLength": 10
        }
      }
    },
    "selfLabel": {
      "type": "object",
      "description": "Metadata tag on an atproto record, published by the author within the record. Note that schemas should use #selfLabels, not #selfLabel.",
      "required": [
        "val"
      ],
      "properties": {
        "val": {
          "type": "string",
          "maxLength": 128,
          "description": "The short string name of the value or type of this label."
        }
      }
    },
    "labelValueDefinition": {
      "type": "object",
      "description": "Declares a label value and its expected interpretations and behaviors.",
      "required": [
        "identifier",
        "severity",
        "blurs",
        "locales"
      ],
      "properties": {
        "identifier": {
          "type": "string",
          "description": "The value of the label being defined. Must only include lowercase ascii and the '-' character ([a-z-]+).",
          "maxLength": 100,
          "maxGraphemes": 100
        },
        "severity": {
          "type": "string",
          "description": "How should a client visually convey this label? 'inform' means neutral and informational; 'alert' means negative and warning; 'none' means show nothing.",
          "knownValues": [
            "inform",
            "alert",
            "none"
          ]
        },
        "blurs": {
          "type": "string",
          "description": "What should this label hide in the UI, if applied? 'content' hides all of the target; 'media' hides the images/video/audio; 'none' hides nothing.",
          "knownValues": [
            "content",
            "media",
            "none"
          ]
        },
        "defaultSetting": {
          "type": "string",
          "description": "The default setting for this label.",
          "knownValues": [
            "ignore",
            "warn",
            "hide"
          ],
          "default": "warn"
        },
        "adultOnly": {
          "type": "boolean",
          "description": "Does the user need to have adult content enabled in order to configure this label?"
        },
        "locales": {
          "type": "array",
          "items": {
            "type": "ref",
            "ref": "#labelValueDefinitionStrings"
          }
        }
      }
    },
    "labelValueDefinitionStrings": {
      "type": "object",
      "description": "Strings which describe the label in the UI, localized into a specific language.",
      "required": [
        "lang",
        "name",
        "description"
      ],
      "properties": {
        "lang": {
          "type": "string",
          "description": "The code of the language these strings are written in.",
          "format": "language"
        },
        "name": {
          "type": "string",
          "description": "A short human-readable name for the label.",
          "maxGraphemes": 64,
          "maxLength": 640
        },
        "description": {
          "type": "string",
          "description": "A longer description of what the label means and why it might be applied.",
          "maxGraphemes": 10000,
          "maxLength": 100000
        }
      }
    },
    "labelValue": {
      "type": "string",
      "knownValues": [
        "!hide",
        "!no-promote",
        "!warn",
        "!no-unauthenticated",
        "dmca-violation",
        "doxxing",
        "porn",
        "sexual",
        "nudity",
        "nsfl",
        "gore"
      ]
    }
  }
}
```
