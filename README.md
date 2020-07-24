# Delphix Data Virtualization for IBM Cloud
Whether your production database lives in IBM Cloud or remains on-premise, provisioning data for cloud-based application development and testing is likely the slowest part of your software delivery pipeline. Time-consuming, manual processes for consolidating, securing, and distributing data delay project timelines because dev and test teams are stuck waiting on data to be delivered into test environments.  

Delphix is a DataOps platform for application development teams, providing secure data for non-production environments on-demand to streamline IBM Cloud migration projects and remove bottlenecks from DevOps workflows. For more information visit www.delphix.com.

Delphix rapidly provisions secure, production-quality data to test environments in IBM Cloud, providing self-service controls to version data like code.

Data Delivery with Delphix Virtualization
On-demand access to production-quality data ensures comprehensive test coverage.
Version data like code:  rewind, branch, and share datasets from any point in time.
Virtualized datasets non-disruptively sync with production instances.

### Prerequisites
- Must have access to Gen 2 VPC.
- The given VPC must have at least one subnet IP address unassigned - the F5-BIGIP VSI will be assigned a IP Address from the user provided subnet as an input.
- Delphix software deployment requirements are detailed in [Delphix documentation](https://docs.delphix.com).					

#### Dependencies
Before you can apply the template in IBM Cloud, complete the following steps.

1. Ensure that you have the following permissions in IBM Cloud Identity and Access Management:
- Manager service access role for IBM Cloud Schematics
- Operator platform role for VPC Infrastructure
2. Ensure the following resources exist in your VPC Gen 2 environment
- VPC
- SSH Key
- VPC has a subnet

### Configuring your Delployment Values

When you select Delphix from the IBM Cloud catalog, you must enter the following values before you can apply the template: 

|  Variable Name   | Description        |
|------------------|--------------------|
| ibmcloud_api_key | The user's IBM Cloud api key |
| subnet_id | The id of the subnet where the Delphix VSI is provisioned |
|ssh_key | The name fo the public SSH key to be used when provisioning the Delphix VSI |
|vpcname | The name of your VPC where the Delphix VSI is to be provisioned |
|profile | The profile of compute CPU and memory resources to be used when provisioning the Delphix VSI. For a list of available profiles, visit https://cloud.ibm.com/docs/vpc?topic=vpc-profiles |
|hostname | The name of your Virtual Server to be provisioned |
|zone | The VPC Zone that you want your VPC networks and virtual servers to be provisioned. |
|volumesize | The block storage volume size in GB. Enter a size between 10 and 2000 GB. |



### Required system resources			
To run the software, the following system resources are required:		
1. Instance profile: Delphix recommends the [memory profiles](https://cloud.ibm.com/docs/vpc?topic=vpc-profiles#memory) with 8vCPU or more for your VPC environment.
  
2. To view the Data Sources supported by Delphix, refer to [Delphix documentation](https://docs.delphix.com) and select the Support Matrix section.	

### Installing

A step by step series of examples that tell you how to get a development env running
(Coming later)


### Deploying Delphix

Refer to the Delphix [Deployment documentation](https://docs.delphix.com/docs/deployment) for detailed deployment instructions.	

### Support	
This product is provided and supported by Delphix. If you encounter an issue that requires opening a support case, click Get help? at the beginning of this page or go directly to [Delphix support page](https://support.delphix.com). For issues with the underlying IBM Cloud resources, open a support case in the IBM Cloud Support Center. [The Delphix support policies](https://support.delphix.com/Support_Policies_and_Technical_Bulletins/Support_Policies/Delphix_Support_Policies_(KBA1504)) are based on your support plan level. You must have a [Delphix Support account](https://support.delphix.com/Support_Policies_and_Technical_Bulletins/Support_Policies/Customer_Support_User_Account_Registration_Policy_(KBA1028)) to file a case.

### About BYOL
BYOL (Bring Your Own License) solutions let you run software on Compute Engine while using licenses purchased directly from the provider. IBM Cloud only charges you for the infrastructure costs, giving you the flexibility to purchase and manage your own licenses. [Contact Delphix](https://www.delphix.com/company/contact) for more information.
 
### End User License Agreement
By subscribing to this product you agree to terms and conditions outlined in the product [End User License Agreement (EULA)](https://www.delphix.com/sites/default/files/2019-04/Delphix-Product-License-and-Services-Agreement-Commercial.pdf).

### Authors

* **Doug Smith** - *Initial work* - [Delphix](https://www.delphix.com)
