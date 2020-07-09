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

### Required system resources			
To run the software, the following system resources are required:		
1. Instance profile: Delphix recommends the memory profiles for your VPC environment.
Recommended Profiles: 
- mx2-8x64 (minimum)
- mx2-16x128
- mx2-32x256
- mx2-48x384 
  
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
By subscribing to this product you agree to terms and conditions outlined in the product [End User License Agreement (EULA](https://www.delphix.com/sites/default/files/2019-04/Delphix-Product-License-and-Services-Agreement-Commercial.pdf).

### Authors

* **Doug Smith** - *Initial work* - [Delphix](https://www.delphix.com)
