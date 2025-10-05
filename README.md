# TasteHub Restaurant Order system-Data Tools Project

<div align="center">
  <img src="https://github.com/cateshee/Data-Tools-final-p-prac/blob/main/TasteHub%20Logo%20Design.png?raw=true" width="300" height="280" alt="TasteHub Restaurant Logo"/>
  <br/>
  <em>Where Every Bite Tells a Story</em>
</div>

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
  - [🚀 Live Demo](#live-demo)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Run tests](#run-tests)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [❓ FAQ (OPTIONAL)](#faq)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

# 📖 TasteHub Restaurant Ordering system <a name="about-project"></a>

> A simple restaurant ordering database for managing customers, menu items, and orders.

[TasteHub Restraunt Ordering System] is a Supabase-powered database application designed to manage customers, menu items, and food orders in a restaurant environment.It displays proper database system design, including foreign key relationships, data consistency, and real-world restaurant operations such as managing orders, tracking menu items, and linking customers to their purchases.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

> Describe the tech stack and include only the relevant sections that apply to your project e.g SQL.

<details>
  <summary>Client</summary>
  <ul>
    <li><a href="https://reactjs.org/">Supabase</a></li>
  </ul>
</details>

<details>
  <summary>Server</summary>
  <ul>
    <li><a href="https://expressjs.com/">SQL</a></li>
  </ul>
</details>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

> Describe between 1-3 key features of the application.

-**Customer Management**Maintain customer profiles.
- **Menu Items**Add, update, and categorize dishes with pricing and descriptions.
- **Ordering System**Track customer orders in real-time.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LIVE DEMO -->

## 🚀 Live Demo <a name="live-demo"></a>

> This project is designed to be deployed on Supabase.

- Database Schema: Available in `schema.sql`
- Documentation: See `data_dictionary.md` and `docs/ERD.md`

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

> Follow this steps to develop a restaurant
 ordering system in your supabase project.

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:
- A supabase account (free tier available)
- Basic knowledge of SQL even if a beginner.
- PostgreSQL database access
- basic HTML knowledeg for the logo.
  
 ### Setup

Clone this repository to your desired folder:

<!--
Example commands:

```sh
  cd my-folder
  git clone git@github.com:myaccount/my-project.git
```
--->
### Run tests
 To run example queries use the supabase sql editor:
 ```SQL
-- Finds a list of all menu items that are currently available.
SELECT item_name, category, price
FROM menu_items
WHERE available = TRUE;

-- Find a  complete list of all customers registered in the system.
SELECT *
FROM customers;

-- Finds a list of all orders, including who ordered what, how many, and when.
SELECT 
  o.order_id,
  c.full_name AS customer,
  m.item_name AS menu_item,
  oi.quantity,
  o.status,
  o.order_date
FROM order_items oi
JOIN orders o ON oi.order_id = o.order_id
JOIN customers c ON o.customer_id = c.customer_id
JOIN menu_items m ON oi.item_id = m.item_id
ORDER BY o.order_id;
```
--->
<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

> Data tools final project-supabase project


👤 **Author1**

- GitHub: [@githubhandle](https://github.com/githubhandle)
- Twitter: [@twitterhandle](https://twitter.com/twitterhandle)
- LinkedIn: [LinkedIn](https://linkedin.com/in/linkedinhandle)

👤 **Author2**

- GitHub: [@githubhandle](https://github.com/githubhandle)
- Twitter: [@twitterhandle](https://twitter.com/twitterhandle)
- LinkedIn: [LinkedIn](https://linkedin.com/in/linkedinhandle)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

> Describe 1 - 3 features you will add to the project.

- [ ] **[new_feature_1]**
- [ ] **[new_feature_2]**
- [ ] **[new_feature_3]**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

> Support this educational database project.

If you like this project...

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

> Give credit to everyone who inspired your codebase.

I would like to thank...

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FAQ (optional) -->

## ❓ FAQ (OPTIONAL) <a name="faq"></a>

> Add at least 2 questions new developers would ask when they decide to use your project.

- **[Question_1]**

  - [Answer_1]

- **[Question_2]**

  - [Answer_2]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

_NOTE: we recommend using the [MIT license](https://choosealicense.com/licenses/mit/) - you can set it up quickly by [using templates available on GitHub](https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/adding-a-license-to-a-repository). You can also use [any other license](https://choosealicense.com/licenses/) if you wish._

<p align="right">(<a href="#readme-top">back to top</a>)</p>
