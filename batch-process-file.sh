#! /bin/sh
for f in "$1"/*; do
  if [ -f "$f" ]; then
    FILE_SIZE="$(du -sh "${f}" | cut -f1)"
    WORDS_COUNT="$(wc -w "${f}" | cut -d' ' -f1)"
    echo "Processing $f file..."
    echo "File size: $FILE_SIZE"
    echo "Word count: $WORDS_COUNT"
  fi
done

