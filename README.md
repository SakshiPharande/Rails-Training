# Rails-Training

This project serves as a hands-on learning experience as I explore and implement various concepts of the Rails framework. Throughout this project, I aim to understand and practice the core principles of Rails while building a functional application.

---

## Project Overview

This application is part of my journey to learn the Rails framework. It demonstrates the use of Rails' key features, including:

- **Model-View-Controller (MVC) architecture**  
- **Active Record for database interactions**  
- **Migrations for schema management**  
- **Validations, Associations, and Enums**  
- **Routing and RESTful APIs**  
- **Foreign keys and Relationships between models**  

---

## Setup Instructions

### **Ruby Version**
- Ensure you have Ruby 3.1.2 or higher installed.

### **System Dependencies**
- Install the following:
  - Ruby on Rails (7.2.2.1 or higher)
  - SQLite3 (default database for development)
  - Node.js (for JavaScript runtime)
  - Yarn (for managing frontend assets)

### **Configuration**
1. Clone the repository:
   ```bash
   git clone https://github.com/SakshiPharande/Rails-Training.git
   cd Rails-Training
   ```
2. Install required gems:
   ```bash
   bundle install
   ```
3. Install Node.js dependencies:
   ```bash
   yarn install
   ```

---

## Database Setup

### **Database Creation**
Run the following commands to set up the database:
```bash
rails db:create
rails db:migrate
```

### **Database Initialization**
(Optional) If seeds are provided:
```bash
rails db:seed
```

---

## Running the Application

1. Start the Rails server:
   ```bash
   rails server
   ```
2. Open your browser and visit:
   ```
   http://localhost:3000
   ```

---

## Features Covered So Far

- **Models**: Defined relationships, validations, and enums for key tables.
- **Migrations**: Created database schema using migration files.
- **Controllers and Routes**: Added RESTful actions for CRUD operations.
- **Views**: Rendered templates using embedded Ruby (ERB).
- **Foreign Keys**: Managed relationships between models (e.g., users, pets, breeds).

---

## Learning Focus

While working on this project, my primary goal is to understand and practice the following Rails concepts:

- **Active Record**: Handling database queries and relationships.
- **Validations**: Ensuring data integrity.
- **Migrations**: Managing schema changes.
- **Enum and Associations**: Implementing enums and defining model relationships.
- **Routing**: Setting up resourceful and custom routes.
- **MVC Pattern**: Understanding the separation of concerns in Rails.

---

## Deployment Instructions

- Deployment to a live environment is not yet configured but will be explored in later stages of this project.

---

Let me know if you’d like additional updates or need help customizing further!
