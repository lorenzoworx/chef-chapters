<a name="readme-top"></a>

# <div align="center">🛰Recipe app 🚀</div>

# 📗 Table of Contents

- [📗 Table of Contents](#-table-of-contents)
- [📖 Recipe app ](#-ruby-group-capstone---catalog-of-my-things-)
  - [🛠 Built With ](#-built-with-)
    - [Tech Stack ](#tech-stack-)
    - [Key Features ](#key-features-)
  - [💻 Getting Started ](#-getting-started-)
    - [Prerequisites](#prerequisites)
    - [Setup](#setup)
    - [Install](#install)
    - [Run localy](#run-localy)
    - [Run Tests ](#run-tests-)
  - [👥 Authors ](#-authors-)
  - [🔭 Future Features ](#-future-features-)
  - [🤝 Contributing ](#-contributing-)
  - [⭐️ Show your support ](#️-show-your-support-)
  - [🙏 Acknowledgments ](#-acknowledgments-)
  - [📝 License ](#-license-)

# 📖 Recipe app <a name="about-project"></a>
The Recipe app keeps track of all your recipes, ingredients, and inventory. It will allow you to save ingredients, keep track of what you have, create recipes, and generate a shopping list based on what you have and what you are missing from a recipe. Also, since sharing recipes is an important part of cooking the app should allow you to make them public so anyone can access them.
The project is a repository consisting of the following files:

- Ruby files
- Rails files
- Ruby linters file

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>
  <ul>
     <li>
      <a href="https://www.ruby-lang.org/en/">
      <img align="center" width="19" height="auto" src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Ruby_logo.svg/198px-Ruby_logo.svg.png?20101129171534" alt="ruby logo" />
      Ruby
      </a>
    </li>
    <li>
      <a href="https://rubyonrails.org/">
      <img align="center" width="19" height="auto" src="./rails-red-logo.svg" alt="ruby logo" />
      Rails
      </a>
    </li>
    <li>
      <a href="https://www.postgresql.org/">
      <img align="center" width="19" height="auto" src="https://wiki.postgresql.org/images/3/30/PostgreSQL_logo.3colors.120x120.png" alt="postgreSQL logo" />
      PostgreSQL
      </a>
    </li>
  </ul>
  
</ul>

###  Key Features <a name="key-features"></a>

- [x] A login page.
- [x] A registration page.
- [x] A food list (with all CRUD implementation, except for 'update').
- [x] A recipes list (with all CRUD implementation, except for 'update').
- [x] A general shopping list view (all missing food for all your recipes and total price).
- [x] A list of all public recipes from other users with their names and total prices.
- [x] Table and column names match the [ERD](https://github.com/microverseinc/curriculum-rails/blob/main/recipe-app/images/recipe_erd.png) diagram with developed
        

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

### Prerequisites

In order to run this project you need:

- [Ruby](https://www.ruby-lang.org/en/) installed and running. To get more information, read the [installation instructions](https://github.com/microverseinc/curriculum-ruby/blob/main/simple-ruby/articles/ruby_installation_instructions.md).
- You should be able to use [IRB](https://en.wikipedia.org/wiki/Ruby_(programming_language)#Features).
- First of all make sure you have both `Ruby` & `Rails` installed in your machine
 (else You can install `Rails` just with this simple command  ```gem install rails```)
### Setup

Clone this repository to your desired folder:

```
  git clone https://github.com/lorenzoworx/Blog-App.git
  cd Blog-App
```

### Install

Install project dependencies with:

```
  bundle install
```
### Run localy
 - Then go to the right folder 
```
$ cd Blog-App
```
```
$ bundle
```
and run to install npm package
```
$ npm install
```

make sure the database is up and running.
```
$ rails db:create
```
When you will add migration file then, you can add command like
```
$ rails db:migrate
```
Run this command line to add some dummy data
```
$ rails db:seed
```

 - Finaly run `rails s` and visit http://localhost:3000/  in your browser!

### Run Tests <a name="run-tests"></a>

Go to your gemfile and add the RSpec gem in the development, test group:

 ```
 group :development, :test do  
  gem 'rspec-rails'
 end
 ```
Then in your terminal run the command:

 ```
  $ bundle install
 ```
To set up RSpec in your app and create the Spec folder run:

 ```
  $ rails generate rspec:install
 ```
  To run Request specs locally you need just to run this following command in your terminal :
 ```
 $ rspec spec/
 $ rspec spec/ --format documentation 
 ```

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## 👥 Authors <a name="authors"></a>

### 👤 **Habtamu Alemayehu**

- GitHub: [Benawi](https://github.com/Benawi)
- Linkedin: [Habtamu](https://www.linkedin.com/in/habtamualemayehu/)

👤 : **lorenzoworx**

- GitHub: [@githubhandle](https://github.com/lorenzoworx)
- LinkedIn: [LinkedIn](in/oshokeokolo)

👤 : **otmaneechchafyky**

- GitHub: [@githubhandle](https://github.com/otmaneechchafyky)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/otmane-echchafyky/)


<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🔭 Future Features <a name="future-features"></a>
- [ ] Optimaze the perfomance of the app.
- [ ] Make the UI more user friendly
<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🤝 Contributing <a name="contributing"></a>

Contributions, [issues](https://github.com/Benawi/Blog-App/issues), and feature requests are welcome!

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## ⭐️ Show your support <a name="support"></a>

Give us ⭐️ If you like this project!

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🙏 Acknowledgments <a name="acknowledgements"></a>

- We wanted to take a moment to express my sincere gratitude for the opportunity to work with you all on this project.
- Microverse, thank you for providing the structure, guidance and community to help me level up my skills as a developer. The experiential learning model has been invaluable in improving my coding abilities and collaboration skills. I appreciate the code reviews and feedback to help me write cleaner, more professional code..

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 📝 License <a name="license"></a>

This project is [MIT](./MIT.md) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
