#!/bin/bash

# Define base directory
BASE_DIR="FruitigerJello"

# Create Theme if it doesn't exist yet
mkdir -p "$BASE_DIR"

DIRECTORIES=(apps mimetypes places)
Contexts=(Apps MimeTypes Places)

# Define source directory (512x512 icons)
SRC_DIR="renders"

# Define target sizes
SIZES=(16 24 32 48 64 96 128 256)

# Go through each folder
for DIR in "${DIRECTORIES[@]}"; do
    # Loop through each icon in 512x512
    for ICON in "$SRC_DIR"/"$DIR"/*.png; do
        BASENAME=$(basename "$ICON")

        for SIZE in "${SIZES[@]}"; do
            TARGET_DIR="$BASE_DIR/${SIZE}x${SIZE}/${DIR}"
            mkdir -p "$TARGET_DIR"
            convert "$ICON" -resize ${SIZE}x${SIZE} "$TARGET_DIR/$BASENAME"
        done
    done
done

echo "Icons resized to all standard sizes."

# Header
cat > "$BASE_DIR/index.theme" <<EOF
[Icon Theme]
Name=Fruitiger Jello
Inherits=Mint-Y, hicolor
Comment=Yeah
EOF

# Generate directories list
entries=()
for DIR in "${DIRECTORIES[@]}"; do
    for SIZE in "${SIZES[@]}"; do
        entries+=("${SIZE}x${SIZE}/${DIR}")
    done
done

# Join entries with commas (no trailing comma)
printf 'Directories=%s\n' "$(IFS=,; echo "${entries[*]}")" >> "$BASE_DIR/index.theme"

# Generate section for each entry
for entry in "${entries[@]}"; do
    cat >> "$BASE_DIR/index.theme" <<EOF

[${entry}]
Size=${entry%%x*}
Context=${entry##*/}
Type=Fixed
EOF
done

echo "Generated index.theme"