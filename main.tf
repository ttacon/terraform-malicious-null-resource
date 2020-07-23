#
#
# This is an example of using a `null_resource` to execute arbitrary code on a
# machine during `terraform apply` of a given plan or blanket apply (please
# always use a plan!).
#
#

# This is the pre-existing `null_resource`, see the docs here:
# https://www.terraform.io/docs/provisioners/null_resource.html
resource "null_resource" "cluster" {
 provisioner "local-exec" {
    command = "./${path.module}/entry.sh"
  }
}
