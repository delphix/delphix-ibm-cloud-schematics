# Delphix Data Masking for IBM Cloud
The Delphix Data Masking capability for IBM Cloud represents an automated approach to protecting sensitive data non-production environments, replacing confidential information such as social security numbers, patient records, and credit card information with fictitious, yet realistic data.
Delphix is a DataOps platform for application development and testing teams, providing secure data for non-production environments on-demand to streamline application transformation projects and remove bottlenecks from DevOps workflows. For more information visit www.delphix.com.

#### Data Masking with Delphix Data Masking for IBM Cloud
Delphix Masking is a multi-user, browser-based web application that provides complete, secure, and scalable software for your sensitive data discovery, masking and tokenization needs, while meeting enterprise-class infrastructure requirements. The Delphix DataOps Platform has several key characteristics to enable your organization to successfully protect sensitive data across the enterprise:

End-to-End Masking — The Delphix platform automatically detects confidential information, irreversibly masks data values, then generates reports and email notifications to confirm that all sensitive data has been masked.

Realistic Data — Data masked with the Delphix platform is production-like in quality. Masked application data in non-production environments remains fully functional and realistic, enabling the development of higher-quality code.

Masking Integrated with Virtualization — Most masking solutions fail due to the need for repeated, lengthy batch jobs for extracting and masking data and lack delivery capabilities for downstream environments. The Delphix DataOps Platform seamlessly integrates data masking with data virtualization, allowing teams to quickly deliver masked, virtual data copies on premises or into private, public, and hybrid cloud environments.

Referential Integrity — Delphix masks consistently across heterogeneous data sources. To do so, metadata and data is scanned to identify and preserve the primary/foreign key relationships between elements so that data is masked the same way across different tables and databases.

Algorithms/Frameworks — Seven algorithm frameworks allow users to create and configure algorithms to match specific security policies. Over twenty five out-of-the-box, preconfigured algorithms help businesses mask everything from names and addresses to credit card numbers and text fields. Moreover, the Delphix platform includes prepackaged profiling sets for healthcare and financial information, as well as the ability to perform tokenization: a process that can be used to obfuscate data sent for processing, then reversed when the processed data set is returned.

Ease of Use — With a single solution, Delphix customers can mask data across a variety of platforms. Moreover, businesses are not required to program their own masking algorithms or rely on extensive administrator involvement. Our web-based UI enables masking with a few mouse clicks and little training.

Automated discovery of sensitive data — The Delphix Profiler automatically identifies sensitive data across databases and files, the time-consuming work associated with a data masking project is reduced significantly.

### Prerequisites
- Must have access to Gen 2 VPC.
- Define the VPC subnet, IP address and Hostname to be applied to the Delphix Masking VSI.
- Ensure SSH, HTTP/HTTPS port accessibility to the Delphix VSI.
- Delphix software deployment requirements are detailed in [Delphix documentation](https://maskingdocs.delphix.com).					

#### Dependencies
Before you can apply the template in IBM Cloud, complete the following steps.

Ensure that you have the following permissions in IBM Cloud Identity and Access Management:
- Manager service access role for IBM Cloud Schematics
- Operator platform role for VPC Infrastructure

### Configuring your Delployment Values

When you select Delphix Data Masking from the IBM Cloud catalog, you must enter the following deployment values before you can apply the template: 

|  Variable Name   | Description        |
|------------------|--------------------|
|ibmcloud_api_key | The user's IBM Cloud api key |
|subnet_id | The id of the subnet where the Delphix Masking VSI is provisioned |
|ssh_key | The name fo the public SSH key to be used when provisioning the Delphix Masking VSI |
|vpcname | The name of your VPC where the Delphix Masing VSI is to be provisioned |
|profile | The profile of compute CPU and memory resources to be used when provisioning the Delphix Masking VSI. Delphix recommends the [memory profiles](https://cloud.ibm.com/docs/vpc?topic=vpc-profiles#memory) with 8vCPU or more for your VPC environment.|
|hostname | The name of your Virtual Server to be provisioned |
|zone | The VPC Zone that you want your VPC networks and virtual servers to be provisioned. |
|volumesize | The block storage volume size in GB. Enter a size between 50 and 500 GB. |
|volumecount| The number of storage volumes, minimum = 1. |

### Outputs
When you apply the template and Delphix is successfully provisioned into your VPC, you see the static IP address that is assigned to your virtual server instance in your Schematics log files. You can use that IP address to access Delphix setup UI. 

### Deploying Delphix

Refer to the Delphix [Deployment documentation](https://docs.delphix.com/docs/deployment) for detailed deployment instructions.	
To view the Data Sources supported by Delphix, refer to [Delphix documentation](https://maskingdocs.delphix.com) and select the Support Matrix section.	

### Support	
This product is provided and supported by Delphix. If you encounter an issue that requires opening a support case, click Get help? at the beginning of this page or go directly to [Delphix support page](https://support.delphix.com). For issues with the underlying IBM Cloud resources, open a support case in the IBM Cloud Support Center. [The Delphix support policies](https://support.delphix.com/Support_Policies_and_Technical_Bulletins/Support_Policies/Delphix_Support_Policies_(KBA1504)) are based on your support plan level. You must have a [Delphix Support account](https://support.delphix.com/Support_Policies_and_Technical_Bulletins/Support_Policies/Customer_Support_User_Account_Registration_Policy_(KBA1028)) to file a case.

### About BYOL
BYOL (Bring Your Own License) solutions let you run software on Compute Engine while using licenses purchased directly from the provider. IBM Cloud only charges you for the infrastructure costs, giving you the flexibility to purchase and manage your own licenses. [Contact Delphix](https://www.delphix.com/company/contact) for more information.
 
### End User License Agreement
By subscribing to this product you agree to terms and conditions outlined in the product [End User License Agreement (EULA)](https://www.delphix.com/sites/default/files/2019-04/Delphix-Product-License-and-Services-Agreement-Commercial.pdf).
