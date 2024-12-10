# CC Repository - MediSight

This API provides an endpoint, and the application is built using Node.js with the Express framework. Then the data is stored in Cloud SQL. The API includes various features, such as medical history recording, articles, medicines, healthcare facilities, users, and wound management. The application was then deployed on Google Cloud using App Engine to ensure service availability and scalability automatically.


---
## **Repository Structure**

### **1. Database SQL**
- **`medisight.sql`**  
  This SQL database contains tables such as `users`, `articles`, `health_facilities`, `wounds`, `medical_history`, and `medicines`.


### **2. api_medisight**
- `controllers/` The **controllers** folder contains files such as `articleController`, `faskesController`, `medicalHistoryController`, and `obatController`.
- `routes/`  The **routes** folder contains a `routes.js` file, which includes the implementation of `GET`, `POST`, `PUT`, and `DELETE` requests for each API.
- `db.js` The **db.js** file contains the connection setup with Cloud SQL, enabling seamless communication between the application and the database.

### **3. Cloud Architecture**  

The **cloud architecture** includes the design of user requests while interacting with the application, detailing how requests are processed and services are interconnected.

### **4. Calculation GCP**  

The **calculation for GCP** includes all resources used in the implementation of Google Cloud Platform, such as databases, storage, and other services required for the application





