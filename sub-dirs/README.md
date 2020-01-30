# Terraform with subdirectories

If I have directory a/ with a.tf in it, and directory a/b/ with b.tf in it, and
I run Terraform from a/, does b.tf get run?

No, it does not. Only .tf files in the immediate directory get run. To run b.tf,
I have to `cd` into `a/b/`, and run `terraform init && terraform apply`.
