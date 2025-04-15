# Bear Commerce

Bear Commerce is an interactive eCommerce website built with the MERN stack. The platform provides a user-friendly interface for University of California, Riverside students to browse and purchase products. It includes features such as user authentication, a shopping cart, and a responsive design for various device sizes.

## Table of Contents

- [Overview](#overview)
- [Technology Stack](#technology-stack)
- [Features](#features)
- [Project Structure](#project-structure)
- [Installation & Local Setup](#installation--local-setup)
- [Environment Configuration](#environment-configuration)
- [CI/CD Pipeline](#cicd-pipeline)
- [Deployment](#deployment)
- [Scripts & Automation](#scripts--automation)
- [Contributing](#contributing)
- [License](#license)

## Overview

Bear Commerce is designed to offer a seamless shopping experience for students. The project is divided into three main sections:
- **Backend:** Built with Node.js and Express, responsible for managing APIs, authentication, orders, and database connections.
- **Frontend:** A React.js application styled with Tailwind CSS. It includes pages for product listings, collections, user authentication, and a shopping cart.
- **Admin:** A separate section for administrative tasks.

The project leverages automated builds and tests via GitHub Actions and uses npm scripts for task automation, ensuring consistency across development and production environments.

## Technology Stack

- **Frontend:** React.js, Tailwind CSS, HTML, Vite (development server)
- **Backend:** Node.js, Express, MongoDB, Mongoose, bcrypt (for authentication), JSON Web Tokens
- **Admin:** (Built as a separate section using similar technologies as the frontend)
- **Testing:** Vitest, React Testing Library, Jest-DOM, jsdom, Axios (for API calls)
- **CI/CD:** GitHub Actions for continuous integration and automated testing
- **Scripting** Scripts written in bash

## Features

- **User Authentication:** Secure signup and login functionality.
- **Product Listings & Collections:** Browse, filter, and purchase products.
- **Shopping Cart:** Manage selected items and proceed to checkout.
- **Responsive Design:** Optimized for desktop and mobile viewing.
- **Automated Testing:** Comprehensive tests to ensure code quality.
- **Automated Deployment:** Planned integration with platforms such as Heroku for continuous delivery.


## Installation & Local Setup

### Prerequisites

- **Node.js & npm:** Install via [nvm](https://github.com/nvm-sh/nvm) to standardize Node versions across team members.
- **MongoDB:** Either run locally or use a cloud solution.
- **Git:** For version control.

### Setting Up Locally

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/jashanbir1/Bear-Commerce.git
   cd Bear-Commerce
2. **Fill in URI for each section**
   ```Navigate to .env in Backend
   Fillin URI:
   MONGO_URI= mongodb+srv://mhass027:HHM657102jam$@cluster0.6sedj.mongodb.net
    CLOUDINARY_API_KEY=476261266172885
    CLOUDINARY_SECRET_KEY=MunWIdoLKNXWiASpsvDGR4m1ro0
    CLOUDINARY_NAME=drac8hyqp
3. **Install dependencies for each part**
    ```For Backend, execute following commands
    cd backend
    npm install cors dotenv express mongoose jsonwebtoken nodemon razorpay stripe validator cloudinary bcrypt multer
    npm install --save-dev nodemon

    ```For Frontend, execute following commands
    cd ..
    npm install

    ```For Adminm execute following commands
    cd ..
    npm install
4. **Run Application**

    ```Option 1 (Recommended): Run through executed Bash script
    Step 1. Navigate to scripts directory from Bear-Commerce

    cd scripts

    Step 2. Run command below to initialize and ensure script is executable (ONLY RUN ONCE DURING FIRST TIME EXECUTING SCRIPT)

    chmod +x run_all.sh

    Step 3. Execute command to run the script

    ./run_all.sh


    Option 2: To run locally
    Step 1. Navigate to backend directory and double click "backend" and navigate downward to click "Open in integrated terminal" and execute following commands

    npm run dev

    Step 2. Navigate to frontend directory and double click "frontend" and navigate downward to click "Open in integrated terminal" and execute following commands
    
    npm run dev

    Step 3. Navigate to admin directory and double click "admin" and navigate downward to click "Open in integrated terminal" and execute following commands

    npm run dev

    Step 4 (Optional). To run tests, Navigate to frontend directory and double click "frontend" and navigate downward to click "Open in integrated terminal" and execute following commands (if frontend is already open in a terminal, close it and open a new terminal)

    npm install
    npm install -D vitest @testing-library/react @testing-library/jest-dom jsdom axios
    npm install -D react-router-dom
    npm install -D @types/jest @types/react @types/react-dom @types/react-router-dom
    npm run test


    **Note: if running into installation issues, insist on deleting node_modules and reinstall dependencies**
    rm -rf node_modules
    npm install

