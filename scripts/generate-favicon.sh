#!/bin/bash
# Script to generate multi-resolution favicon.ico from Favicon.ico-2.png
# Requires ImageMagick (convert command)

set -e

SOURCE_IMAGE="Favicon.ico-2.png"
OUTPUT_FILE="favicon.ico"

# Check if ImageMagick is installed
if ! command -v convert &> /dev/null; then
    echo "Error: ImageMagick (convert command) is not installed."
    echo "Please install ImageMagick first:"
    echo "  Ubuntu/Debian: sudo apt-get install imagemagick"
    echo "  macOS: brew install imagemagick"
    exit 1
fi

# Check if source image exists
if [ ! -f "$SOURCE_IMAGE" ]; then
    echo "Error: Source image $SOURCE_IMAGE not found."
    exit 1
fi

echo "Generating multi-resolution favicon.ico from $SOURCE_IMAGE..."

# Generate individual size PNGs
convert "$SOURCE_IMAGE" -resize 16x16 /tmp/icon16.png
convert "$SOURCE_IMAGE" -resize 32x32 /tmp/icon32.png
convert "$SOURCE_IMAGE" -resize 48x48 /tmp/icon48.png
convert "$SOURCE_IMAGE" -resize 64x64 /tmp/icon64.png

# Combine into multi-resolution ICO
convert /tmp/icon16.png /tmp/icon32.png /tmp/icon48.png /tmp/icon64.png ICO:"$OUTPUT_FILE"

# Clean up temporary files
rm -f /tmp/icon16.png /tmp/icon32.png /tmp/icon48.png /tmp/icon64.png

echo "✓ Generated $OUTPUT_FILE with sizes: 16x16, 32x32, 48x48, 64x64"
echo "✓ File size: $(ls -lh $OUTPUT_FILE | awk '{print $5}')"

# Copy source PNG as fallback
cp "$SOURCE_IMAGE" favicon.png
echo "✓ Copied $SOURCE_IMAGE to favicon.png as fallback"
