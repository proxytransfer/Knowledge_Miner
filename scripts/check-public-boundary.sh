#!/usr/bin/env bash
set -euo pipefail

for p in src include tests CMakeLists.txt Dockerfile; do
  if [ -e "$p" ]; then
    echo "PRIVATE BOUNDARY VIOLATION: $p"
    exit 1
  fi
done

if find . -type f \( -name '*.cpp' -o -name '*.cc' -o -name '*.cxx' -o -name '*.hpp' \) -print -quit | grep -q .; then
  echo "PRIVATE BOUNDARY VIOLATION: C/C++ implementation found"
  exit 1
fi

m1="gap""-reformulation"
m2="atomize""-json-v0.1"
m3="OpenAICompatible""Adapter"
for marker in "$m1" "$m2" "$m3"; do
  if grep -RIn --exclude-dir=.git --exclude='check-public-boundary.sh' -- "$marker" .; then
    echo "PRIVATE MARKER FOUND: $marker"
    exit 1
  fi
done

if grep -RIE --exclude-dir=.git --exclude='check-public-boundary.sh'   '(-----BEGIN (RSA |EC |OPENSSH )?PRIVATE KEY-----|sk-[A-Za-z0-9_-]{16,})' .; then
  echo "POSSIBLE SECRET FOUND"
  exit 1
fi

echo "Public boundary PASS"
