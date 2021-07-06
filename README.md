# data-engineering-course

# Pre-requisites

Principle 1: Professionals treat themselves like morons

You wouldn't tear your entire project down accidentally, would you? 

Princple 2: If it can't be encoded, it can't be scaled

Many people think 'scale' means BIG. But often, scale is repeatability. Imagine
a revolving door of IT-mandated changes: move it here, move it there.

It's 

# setup

```
python3 -m venv venv
source venv/bin/activate
```

### Amazon Web Services

You'll need to create an account, user and install the CLI.

```{python}
pip install aws
```

1. Go to the [Identity and Access Management](https://console.aws.amazon.com/iam/home) page.


*.aws/config*
```
[default]
region = us-east-1
user = 
role = ...
```

### git

### Terraform

`brew install terraform`

### Postgresql CLI Tool (psql)

`brew install postgresql`


# Lesson 1: Boring Infrastructure

In this section, we will stand up your basic infrastrucure in AWS using Terraform.


Check out [this resoure](https://learn.hashicorp.com/tutorials/terraform/aws-rds?in=terraform/modules&utm_source=WEBSITE&utm_medium=WEB_IO&utm_offer=ARTICLE_PAGE&utm_content=DOCS&_ga=2.58674153.2144063069.1624738018-256168760.1621443418) for more.

### Setting up the files


### Running the terraform

1. from the command line, `cd` into `terraform/aws` and crea


Crahttps://learn.hashicorp.com/tutorials/terraform/cloud-init

# Lesson 2: Postgresql Infrastructure

# Lesson 3: Data Ingestion

# Lesson 4: Data Modelling

# Lesson 5: Data Publication and Visualization

# https://gist.github.com/philippkeller/dedd0ee8221f4b155592149d08a26248

