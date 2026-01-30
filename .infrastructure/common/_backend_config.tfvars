# This config file must be passed to the `tofu init`command via the
# `-backend-config` option.
endpoints = {
  s3 = "https://sfo3.digitaloceanspaces.com"
}

bucket = "opentofu-states"
key    = "${var.project_name}/${var.environment}/terraform.tfstate"

# Deactivate a few AWS-specific checks
skip_credentials_validation = true
skip_requesting_account_id  = true
skip_metadata_api_check     = true
skip_region_validation      = true
skip_s3_checksum            = true
region                      = "sfo3"

# Enable state locking with a lockfile
use_lockfile = true
