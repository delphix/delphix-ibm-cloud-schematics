# Delphix Data Virtualization for IBM Cloud
Whether your production database lives in IBM Cloud or remains on-premise, provisioning data for cloud-based application development and testing is likely the slowest part of your software delivery pipeline. Time-consuming, manual processes for consolidating, securing, and distributing data delay project timelines because dev and test teams are stuck waiting on data to be delivered into their test environments.  

Delphix is a DataOps platform for application development and testing teams, providing secure data for non-production environments on-demand to streamline application transformation projects and remove bottlenecks from DevOps workflows. For more information visit www.delphix.com.

Delphix rapidly provisions secure, production-quality data to test environments in IBM Cloud, providing self-service controls to version and manage data like code.

#### Data Delivery with Delphix Virtualization
Non-disruptively sync with production data sources, regardless of location.
Quickly provision as many secure, non-production datasets as desired by application development and testing teams.
Enable On-demand access to production-quality data ensuring comprehensive test coverage.
Version data like code:  rewind, branch, and share datasets from any point in time.
Refresh, reset or provision virtualized datasets to current date/time or a specific point-in-time.

### Prerequisites
- Must have access to Gen 2 VPC.
- Define the VPC subnet, IP address and Hostname to be applied to the Delphix VSI.
- Ensure SSH, HTTP/HTTPS port accessibility to the Delphix VSI.
- Delphix software deployment requirements are detailed in [Delphix documentation](https://docs.delphix.com).					

#### Dependencies
Before you can apply the template in IBM Cloud, complete the following steps.

Ensure that you have the following permissions in IBM Cloud Identity and Access Management:
- Manager service access role for IBM Cloud Schematics
- Operator platform role for VPC Infrastructure

### Configuring your Delployment Values

When you select Delphix from the IBM Cloud catalog, you must enter the following deployment values before you can apply the template: 

|  Variable Name   | Description        |
|------------------|--------------------|
|ibmcloud_api_key | The user's IBM Cloud api key |
|subnet_id | The id of the subnet where the Delphix VSI is provisioned |
|ssh_key | The name fo the public SSH key to be used when provisioning the Delphix VSI |
|vpcname | The name of your VPC where the Delphix VSI is to be provisioned |
|profile | The profile of compute CPU and memory resources to be used when provisioning the Delphix VSI. Delphix recommends the [memory profiles](https://cloud.ibm.com/docs/vpc?topic=vpc-profiles#memory) with 8vCPU or more for your VPC environment.|
|hostname | The name of your Virtual Server to be provisioned |
|zone | The VPC Zone that you want your VPC networks and virtual servers to be provisioned. |
|volumesize | The block storage volume size in GB. Enter a size between 10 and 2000 GB. |
|volumecount| The number of storage volumes, minimum = 4. |

### Outputs
When you apply the template and Delphix is successfully provisioned into your VPC, you see the static IP address that is assigned to your virtual server instance in your Schematics log files. You can use that IP address to access Delphix setup UI. 

### Deploying Delphix

Refer to the Delphix [Deployment documentation](https://docs.delphix.com/docs/deployment) for detailed deployment instructions.	
To view the Data Sources supported by Delphix, refer to [Delphix documentation](https://docs.delphix.com) and select the Support Matrix section.	

### Support	
This product is provided and supported by Delphix. If you encounter an issue that requires opening a support case, click Get help? at the beginning of this page or go directly to [Delphix support page](https://support.delphix.com). For issues with the underlying IBM Cloud resources, open a support case in the IBM Cloud Support Center. [The Delphix support policies](https://support.delphix.com/Support_Policies_and_Technical_Bulletins/Support_Policies/Delphix_Support_Policies_(KBA1504)) are based on your support plan level. You must have a [Delphix Support account](https://support.delphix.com/Support_Policies_and_Technical_Bulletins/Support_Policies/Customer_Support_User_Account_Registration_Policy_(KBA1028)) to file a case.

### About BYOL
BYOL (Bring Your Own License) solutions let you run software on Compute Engine while using licenses purchased directly from the provider. IBM Cloud only charges you for the infrastructure costs, giving you the flexibility to purchase and manage your own licenses. [Contact Delphix](https://www.delphix.com/company/contact) for more information.
 
### End User License Agreement
By subscribing to this product you agree to terms and conditions outlined in the product [End User License Agreement (EULA)](https://www.delphix.com/sites/default/files/2019-04/Delphix-Product-License-and-Services-Agreement-Commercial.pdf).
