# AWS S3 Bucket Website Hosting using Terraform and GitHub Actions

This repository features a development version static website of AWS Cloud Clubs - Mapúa University hosted in AWS S3, following CI/CD principles using Terraform and GitHub Actions. The infrastructure, which consists of an S3 bucket configured for static web hosting, was configured through Terraform. AWS and GitHub actions integration was implemented through an IAM Identity Provider with OpenID Connect, integrated to a role. The role was given a trusted entity and S3 full access to enable seamless integration. The GitHub actions activate upon submitting a pull request for the development branch (raymondpambuan-PR-1). When checks are done, the development static website will be updated based on the changes from the development branch. This enables continuous integration-continuous deployment.


**Disclaimer:** The methodology implemented was derived from Camille He's [project](https://dev.to/camillehe1992/aws-s3-bucket-website-hosting-using-terraform-4fk5).
