# Multi-branch HCP Terraform Stacks test fixture

Minimal Terraform Stacks configuration using only `hashicorp/random` and
`hashicorp/null`, with no cloud credentials required.

- `main`: baseline deployments with prod instances 7, staging instances 5, and dev instances 3.
- `develop`: branches from `main` and changes only staging instances from 5 to 6.
- `feature-x`: branches from `main` and changes only prod instances from 7 to 8.

Each deployment uses its default deployment group: `prod_default`,
`staging_default`, and `dev_default`.

The deployment inputs are intentionally unused by the component; branch changes
exercise deployment configuration differences without changing resource counts.