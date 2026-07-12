#!/bin/bash
set -e
uv sync
uv run myst build --html --ci

# TODO: replace with your actual AdSense publisher ID
ADSENSE_PUB_ID="ca-pub-YOUR_PUB_ID"

# Inject Google AdSense script into the <head> of all built HTML files
ADSENSE_SCRIPT="<script async src=\"https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=${ADSENSE_PUB_ID}\" crossorigin=\"anonymous\"></script>"

for html_file in $(find _build/html -name "*.html" -type f); do
  sed -i "s|</head>|${ADSENSE_SCRIPT}</head>|" "$html_file"
done

# Copy static files (ads.txt, etc.) to build output
if [ -d public ]; then
  cp -r public/* _build/html/ 2>/dev/null || true
fi
