# Hooks

This is a collection of generic hooks I've written for myself or others.

| script | hook type | variable(s) | description | language |
|--|--|--|--|--|
| no-large | pre-commit | hooks.maxfilebytes | Identifies and removes all cached files that are larger than `hooks.maxfilebytes` in the commit. Stops the commit on file match. | bash |

## About Git Hooks

Git hooks run at defined events and are stored in your project's folder `.git/hooks`.
