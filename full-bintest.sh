#!/bin/sh

for file in pkgs/*; do
  go run github.com/candrewlee14/webman@main -l "." dev bintest "$(echo "$file" | sed -E 's|pkgs\/([^.]+).*|\1|')"
done
