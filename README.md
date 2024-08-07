# gcp-stacks-example

_This is an example stack configuration for the private preview of Terraform Stacks. Language
constructs and features are subject to change given feedback received during this preview. Do not
use Stacks for production workloads at this time._

An example Terraform Stack that provisions a Debian virtual machine.

Three components are used:

* `compute` leverages the data references of the SSH key and cloud image to create a new Debian resource using the Google provider.

_We do not recommend using this example within production accounts. This example will incur [small]
costs if provisioned. Please remember to destroy the infrastructure after using this example._


## Usage

_Prerequisites: You must have a Terraform Cloud account with access to the private preview of
Terraform Stacks, a GitHub account, and a GCP Project with Terraform Cloud configured as an OIDC
identity provider. Details of all of this are found in the provided Stacks User Guide._

1. **Configure GCP authentication** by creating a new service account in the Google Cloud Console (or with Terraform itself!) with the necessary roles (Cloud Storage, Cloud Functions, and API Gateway) and a service account key to allow the role to be assumed by Terraform Cloud (the OIDC identity provider). More details on this step can be found in the Stacks User Guide or in the [Dynamic Credentials with the GCP Provider](https://developer.hashicorp.com/terraform/cloud-docs/workspaces/dynamic-provider-credentials/gcp-configuration) guide.
2. **Fork this repository** to your own GitHub account, such that you can edit this stack configuration
for your purposes.
3. **Edit your forked stack configuration** and change `deployments.tfdeploy.hcl` to use the public ssh key url, GCP audience, GCP service account email, and GCP project ID you created, as well as an identity token audience value for GCP.
4. **Create a new stack** in Terraform Cloud and connect it to your forked configuration repository.
5. **Provision away!** 
