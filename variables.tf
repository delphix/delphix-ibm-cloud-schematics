variable "TF_VERSION" {
  default = "0.12"
  description = "terraform engine version to be used in schematics"
}

variable "ibmcloud_api_key" {
  # defined in tfvars
    description = "The user's IBM Cloud api key."
}

variable "iaas_classic_username" {
 # defined in tfvars
   description = "The user's classic infastructure user name."
}

variable "iaas_classic_api_key" {
  # defined in tfvars
    description = "The account's classic infastructure api key."
}

variable "hostname" {
  # default region to be used
    default = "delphixddp1"
    description = "The name of your Delphix Engine  to be provisioned."
}

variable "region" {
  # default region to be used
    default = "us-east"
    description = "Optional. The value of the region of VPC."
}

variable "profile" {
  # default compute profile to be used
    default = "mx2-16x128"
    description = "The profile of compute CPU and RAM resources to be used when deploying the Delphix Engine. For a list of available profiles, visit https://cloud.ibm.com/docs/vpc?topic=vpc-profiles"
}

variable "volumecount" {
  # default volume count
    default = "4
    description = "The number of block storage data volumes for use by the Delphix Engine."
}

variable "volumeprofile" {
  # default volume profile to be used
    default = "10iops-tier"
    description = "The block storage profile to use. The default uses the 10 IOPS/GB tier for the most demanding workloads. For more information on volume profiles, visit https://cloud.ibm.com/docs/vpc?topic=vpc-block-storage-profiles"
}

variable "volumesize" {
  # default volume size to be used
    default = "900"
    description = "The block storage volume size in GB. Enter a size between 10 and 2000 GB. The default value will create 4 900GB volumes for a total 3600GB raw Engine Capacity."
}

variable "vpcname" {
  # default vpc name to be used
  default = "delphix-vpc"
  description = "The name of the VPC where you want to deploy the Delphix Engine."
}
variable "zone" {
  default     = "us-south-1"
  description = "The VPC Zone that you want your VPC networks and virtual servers to be provisioned in. To list available zones, run `ibmcloud is zones`."
}

variable "resource_group" {
  # use default or whatever valid resource name in your account
  default = "default"
  description = "Optional. The value of the resource group of VPC."
}

variable "vnf_cos_image_url" {
  default     = "cos://us-east/delphix-data-virtualization-cos-standard-axh/Delphix_6.0.2.1_2020-06-03-17-16_Standard_KVM.qcow"
  description = "The COS image object URL for Delphix Engine image."
}

variable "vnf_vpc_image_name" {
  default     = "Delphix_6.0.2.1"
  description = "The name of the custom image to be provisioned in your IBM Cloud account."
}

variable "subnet_id" {
  default = ""
  description = "The id of the subnet where the Delphix Engine is to be provisioned."
}