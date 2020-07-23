malicious-terraform-example
=====

This is an example of a terraform module that once planned and applied, will
run an arbtrary shell script.

***PLEASE READ THE CODE BEFORE INSTALLING THIRD-PARTY TERRAFORM MODULES***

To be clear, this code is NOT provided to do anything malicious or to be used in
a malicious manner, rather it is to share a mechanism that needs to be protected
against when using third-party terraform modules.

# Trying it out
To try this module out, you can simple do the following:

```sh
cat <<EOF > main.tf
module demo {
    source = "git::ssh://git@github.com/ttacon/terraform-malicious-null-resource.git?ref=v1.0.1"
}
EOF

terraform init
terraform plan -out=yolo.tf.plan
terraform apply yolo.tf.plan
```

# How does this work?
[Terraform `null_resource`](https://www.terraform.io/docs/provisioners/null_resource.html).

<more details to be added>