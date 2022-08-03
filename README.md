## Parallel Processing with RStudio on Amazon SageMaker

Many customers choose to use SageMaker Processing to help implement parallel data processing. With Processing, you can use a simplified, managed experience on SageMaker to run your data processing workloads, such as feature engineering, data validation, model evaluation, and model interpretation. This brings many benefits as there is no long running infrastructure to manage as processing instances spin down once jobs are complete, environments can be standardized via containers, data within Amazon S3 is natively distributed across instances and infrastructure settings are flexible in terms of memory, compute and storage.

Last year, we announced the general availability of RStudio on Amazon SageMaker, the industry’s first fully managed RStudio Workbench IDE in the cloud. This allowed RStudio users to have the same experience while also benefiting from a native integration into Amazon SageMaker and the AWS Cloud.

The goal of this repository helps customers to learn about how to do Parallel Data Processing with RStudio in Amazon SageMaker Studio.

Who would benefit from this resources and code: Data scientists, Analysts, ML engineer, Data Engineers and Developers who would like to run a fully-managed RStudio integrated development environment (IDE) in the cloud.

Prior Knowledge: R is used as the programming language for all the labs and participants are assumed to have familiarity with R.

Pre-requisites: • Setup the RStudio on SageMaker workbench • Create a user with RStudio on SageMaker access permissions

Content of this repository: Building the container Running the processing pipeline

![architecture 1](https://user-images.githubusercontent.com/107490848/182706223-aac98e09-c495-4264-823b-2191d0e279e6.png)

How To run Parallel Data processing jobs within RStudio on SageMaker:

    Install the SageMaker Studio Docker CLI and build the container image by using the Container_Build.rmd file.
    Running the Parallel_Data_ Processing.rmd file to create a parallel data processing pipeline
    Processing feature engineering job with the filter.R file to filter out certain columns
    Taking the processed data files, combining them and splitting them into a test, train and validation data set
    Executing the Pipeline

![architecture 2](https://user-images.githubusercontent.com/107490848/182706387-b87c3894-7c57-4cb5-b5b0-47335ac29227.png)

## Security

See [CONTRIBUTING](CONTRIBUTING.md#security-issue-notifications) for more information.

## License

This library is licensed under the MIT-0 License. See the LICENSE file.

