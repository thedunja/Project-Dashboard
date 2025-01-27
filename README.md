# **_Project Dashboard_**

## **General Description:**

The Project Management Dashboard is a service designed to help users manage projects effectively. 
It allows users to create, update, share, and delete project information, including details and attached 
documents. The platform supports file storage, image processing, and seamless integration with cloud-based
storage (AWS S3). Additionally, the service offers user authentication and management for secure access.


## **Features:**

-User Login/Authentication: Secure login and user registration.
-Project Management: Create, update, and delete project information.
-Project Details: Add/update project name, description, and other related information.
-File Management: Attach, update, and delete project documents (e.g., DOCX, PDF).
-Sharing: Share projects with other users for collaboration.
-Cloud Storage Integration: Projects' documents are stored securely in AWS S3.
-Image Processing: AWS Lambda functions trigger image processing tasks (e.g., resizing) when
a file is uploaded to S3.

## **Tech Stack:**

*Backend:
 -Python 3.10
 -FastAPI for RESTful APIs
 -PostgreSQL for database storage
 -SQLAlchemy ORM support with PostgreSQL
-File Storage: AWS S3 for storing project documents
-Image Processing: AWS Lambda functions to process images triggered by S3 events
-Containerization: Docker for containerizing the application
*CI/CD:
 -GitHub Actions or Gitlab CI for testing, linting, building, pushing to a registry, and 
 deploying to the cloud on merge requests.

## **Docker Setup & Installation**

This project uses Docker and Docker Compose to run both the application and the PostgreSQL database
in containers.

## **Prerequisites**

Ensure the following are installed on your machine:

-Docker
-Docker Compose
-Python 3.10 (if running locally without Docker)
-AWS Account (for S3 and Lambda configuration)
-GitHub or Gitlab Account (for CI/CD setup)

### **Steps to Build & Run with Docker**

1. Clone the repository: git clone git@github.com:thedunja/Project-Dashboard.git
cd project-dashboard

2. Set up the .env file:
Create a .env file in the root of the project and define the necessary environment variables
(e.g., database credentials, AWS credentials).

3. Build and start the application using Docker Compose:

From the project root, run: docker-compose up --build
This will:
-Build the application image defined in containers/app.Dockerfile
-Start both the FastAPI application and the PostgreSQL database containers
-Expose the FastAPI app on http://localhost:8000

4. Stopping the containers:

To stop the containers run: docker-compose down

## **Accessing the Application**

Once the containers are running, you can access the FastAPI application at: http://localhost:8000
The Swagger UI for API documentation is available at: http://localhost:8000/docs



