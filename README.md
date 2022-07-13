![](https://img.shields.io/badge/Microverse-blueviolet)
![](https://img.shields.io/static/v1?label=BY&message=Algerina&color=pink)
![](https://img.shields.io/static/v1?label=BY&message=Estebanmual&color=blue)
![](https://img.shields.io/static/v1?label=BY&message=FranciscoPonceDev&color=purple)
![](https://img.shields.io/static/v1?label=BY&message=German-cobian&color=red)
![](https://img.shields.io/static/v1?label=BY&message=Omar25ahmed&color=green)

# WISHYACHT
![Rails](https://img.shields.io/badge/rails-%23CC0000.svg?style=for-the-badge&logo=ruby-on-rails&logoColor=white)
![Postgres](https://img.shields.io/badge/postgres-%23316192.svg?style=for-the-badge&logo=postgresql&logoColor=white)


[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](./MIT.md)
![rails version](https://img.shields.io/badge/Rails-7-red)
![ruby version](https://img.shields.io/badge/Ruby-3.x-yellow)
<hr>

## Description
> This is  a Web application where users should sign in to rent a Yacht from a list then reserve for a determined period, users can then see their reservations or cancel them.
<hr>


## Api Documentation
>You can review the documentation for the API [here]().
<hr>

 
## Front-end Repository 

[ReactApp](https://github.com/algerina/rent-yacht-frontend)


## Built With

- Major languages: Ruby, HTML, Javascript, Bootstrap.
- Frameworks: Ruby on Rails, React&Redux.
- Tools & Methods: RSpec, PostgreSQL, JWT, Jest, Linters.
<hr>

## Getting Started

If you have Rails 7 installed, you can skip to the [Setup](#setup) section

## Clone Repo

First clone this repo by running this command in your terminal:

(https://github.com/algerina/rent-yacht.git)

<hr>

## Prerequisites

The following technologies must be installed in your local machine:

 - Ruby.
 - Postgres ('pg', '~> 1.1')
 - Node.js 

Refer to [Section 3](https://guides.rubyonrails.org/v5.1/getting_started.html#:~:text=3%20Creating%20a%20New%20Rails%20Project) from the official [Rails Guide](https://rubyonrails.org/) for more detailed instructions on how to install these technologies.

### Install Rails
To install Rails run these commands in your terminal:
~~~ bash
gem install rails
# wait a few seconds for it to download
# ...
# ...
# verify that it was installed by running
rails --version
~~~
<hr>

## System Dependencies

To automatically install all the dependencies needed run:

~~~ bash
bundle install
~~~
<hr>

## Database Initialization
To initialize the database created  run:
~~~ bash
rails db:setup
~~~
<hr>

## Start Server
To start the server
~~~ bash
rails server
~~~
Which you can visit by going to http://localhost:3001 in your browser.
<hr>

## Testing RSpec
Anyway, to run tests located in the spec folder [/spec](/spec/) run:
~~~ bash
bundle exec rspec spec
~~~
<hr>

## How To Contribute?

To contribute you can create a new branch and work on it.

Visit [linters folder](.github/workflows/linters.yml) to learn how to setup linters.

Then check linters locally before pushing by running:
~~~ bash
npx stylelint "**/*.{css,scss}"
# ...
# ...
rubocop --color -A
~~~

Finally, once your changes have no linter errors and all [tests](#testing-rails) are passing, try to merge your branch into  `develop` by running:
~~~ bash
git checkout development
git merge <branchname>
~~~

<hr>

## Collaborators
👤 **Amel Khiri**

 Platform | Badge |
 --- | --- |
 **GitHub**  | [@Algerina](https://github.com/Algerina)
 **LinkedIn** | [@Amel Khiri](https://www.linkedin.com/in/amel-khiri/)
<hr>

👤 **Edgar Esteban Muñoz Alba**

Platform | Badge |
 --- | --- |
 **GitHub**  | [@estebanmual](https://github.com/estebanmual)
 **Twitter** |[@estebanmual](https://twitter.com/estebanmual)
 **LinkedIn** | [LinkedIn](https://linkedin.com/in/estebanmual)

 👤 **Francisco Ponce**

Platform | Badge |
 --- | --- |
 **GitHub**  |[@franciscoPonceDev](https://github.com/franciscoPonceDev)
 **LinkedIn** |  [Francisco Ponce](https://www.linkedin.com/in/dev-ponce/)

 👤 **German Cobian**

Platform | Badge |
 --- | --- |
 **GitHub**  | [@German Cobian](https://github.com/German-Cobian)
 **Twitter** |[@GermanCobian2](https://twitter.com/GermanCobian2)
 **LinkedIn** | [@German Cobian](https://www.linkedin.com/in/german-cobian/)

 👤 **Omar Ragheb**

Platform | Badge |
 --- | --- |
 **GitHub**  |  [@omar25ahmed](https://github.com/omar25ahmed)
 **Twitter** |[@omar25Ahmed](https://twitter.com/Omar25Ahmed)
 **LinkedIn** | [@Omar-ragheb](https://www.linkedin.com/in/omar-ragheb/)


<hr>
 
## Show your support

Give a ⭐️ if you like this project!
<hr>

## Acknowledgments

Original design [Vespa](https://www.behance.net/gallery/26425031/Vespa-Responsive-Redesign/modules/173005583) by [Murat Korkmaz](https://www.behance.net/muratk) on [Behance](https://www.behance.net/)

<hr>

## 📝 License

This project is [MIT](./MIT.md) licensed.