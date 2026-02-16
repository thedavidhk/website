#!/usr/bin/env bash
set -euo pipefail

# Start the Zola development server with live reload.
# --open   : opens the site in the default browser
# --drafts : also renders pages/posts with draft = true
exec zola serve --open --drafts
