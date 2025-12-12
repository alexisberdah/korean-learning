#!/bin/bash

# Script to check for the latest version of Cursor on Ubuntu
# This checks the official downloader redirect URL to find the latest version filename.

DOWNLOAD_URL="https://downloader.cursor.sh/linux/appImage/x64"

echo "🔍 Checking for Cursor updates..."

# We use curl to check the headers of the download URL.
# The official link redirects to the specific versioned file (e.g., on AWS S3).
# We capture that redirect URL to extract the version number.

HEADERS=$(curl -s -I "$DOWNLOAD_URL")
LATEST_URL=$(echo "$HEADERS" | grep -i "location:" | awk '{print $2}' | tr -d '\r')

# Fallback: Check Content-Disposition if no redirect (direct download)
if [ -z "$LATEST_URL" ]; then
    CONTENT_DISP=$(echo "$HEADERS" | grep -i "content-disposition:" | awk -F'filename=' '{print $2}' | tr -d '\r"'"'")
    if [ -n "$CONTENT_DISP" ]; then
        FILENAME="$CONTENT_DISP"
        LATEST_URL="Direct Download ($FILENAME)"
    fi
fi

if [ -z "$LATEST_URL" ] && [ -z "$FILENAME" ]; then
    echo "❌ Error: Could not retrieve update information."
    echo "Please check your internet connection or try visiting https://cursor.com/downloads"
    exit 1
fi

# Extract the filename from the URL if not already found
if [ -z "$FILENAME" ]; then
    FILENAME=$(basename "$LATEST_URL")
fi

# Extract version using regex (assuming format like Cursor-X.Y.Z-...)
if [[ "$FILENAME" =~ ([0-9]+\.[0-9]+\.[0-9]+) ]]; then
    VERSION="${BASH_REMATCH[1]}"
    echo "✅ Latest version available: $VERSION"
    echo "📁 Filename: $FILENAME"
else
    echo "✅ Latest version found (could not parse version number):"
    echo "📁 $FILENAME"
fi

echo ""
echo "To update:"
echo "1. Download the new AppImage from: $DOWNLOAD_URL"
echo "2. Make it executable: chmod +x $FILENAME"
echo "3. Replace your existing AppImage."
