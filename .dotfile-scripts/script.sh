#!/bin/bash
set -euo pipefail

raw=$(env -i git config --get remote.upstream.url | cut -c 5- | sed 's/.git$//' | sed 's/:/\//')
open -a 'Google Chrome' "https://${raw}"


