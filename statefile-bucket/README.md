# Statefile bucket in a module

Can you have a setup like:

```
dir/
  |--> main.tf
  |--> backend.tf
  |--> modules/
        |--> remote-statefile-bucket/
              |--> remote-statefile-bucket.tf
```

where remote-statefile-bucket.tf creates remote-statefile-bucket, which is used
in backend.tf, and where main.tf imports the remote-statefile-bucket module?
Basically, does Terraform import and execute modules before moving on?

No. `terraform init` will not work with the setup as shown above and as present
in this directory. The remote statefile bucket has to exist before
`terraform init` is run.
