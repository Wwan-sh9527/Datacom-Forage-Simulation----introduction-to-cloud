#!/usr/bin/env bash
set -euo pipefail

CONFIG_FILE="deployment/deployment-plan.yml"

echo "Starting cloud deployment validation..."

if [[ ! -f "$CONFIG_FILE" ]]; then
  echo "ERROR: Deployment plan not found: $CONFIG_FILE"
  exit 1
fi

required_controls=(
  "principle_of_least_privilege: true"
  "public_ip_access: disabled"
  "managed_identity: enabled"
)

for control in "${required_controls[@]}"; do
  if grep -Fq "$control" "$CONFIG_FILE"; then
    echo "PASS: $control"
  else
    echo "FAIL: Missing required security control: $control"
    exit 1
  fi
done

echo "All required security controls passed."
echo "Validation complete. No Azure resources were created."
