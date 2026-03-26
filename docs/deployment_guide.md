# Fly.io Deployment Guide for CBLnusrl-site

This guide provides detailed instructions for deploying the CBLnusrl-site application on Fly.io, including setup for private deployment, environment variable configuration, and local testing.

## Table of Contents
- [1. Prerequisites](#1-prerequisites)
- [2. Setting Up Fly.io](#2-setting-up-flyio)
- [3. Private Deployment](#3-private-deployment)
- [4. Environment Variable Setup](#4-environment-variable-setup)
- [5. Local Testing](#5-local-testing)
- [6. Troubleshooting](#6-troubleshooting)

## 1. Prerequisites
Before you begin, make sure you have the following installed:
- [Fly CLI](https://fly.io/docs/getting-started/installing-flyctl/)
- A Fly.io account
- Git

## 2. Setting Up Fly.io
1. **Install Fly CLI:** Follow the [installation instructions](https://fly.io/docs/getting-started/installing-flyctl/) to install the Fly CLI.
2. **Login to Fly.io:** Run the following command to log in:
   ```bash
   flyctl login
   ```
3. **Create a new Fly app:** Use the command below to create your application:
   ```bash
   flyctl create [app-name]
   ```
   Replace `[app-name]` with a unique name for your application.

## 3. Private Deployment
To deploy your application privately:
1. In your Fly.app settings, locate the "Privacy" section and select "Private".
2. Ensure that your access control is configured correctly to restrict access to authorized users only.
3. Deploy the app with:
   ```bash
   flyctl deploy
   ```

## 4. Environment Variable Setup
Environment variables are crucial for configuring your application. Create a `.env` file at the root of your project and include the following variables:
```bash
# .env
DATABASE_URL=your_database_url
API_KEY=your_api_key
SECRET_KEY=your_secret_key
```
To set these variables in Fly.io directly, use:
```bash
flyctl secrets set DATABASE_URL=your_database_url API_KEY=your_api_key SECRET_KEY=your_secret_key
```

## 5. Local Testing
1. **Run your application locally:** Before deploying, make sure the application works locally.
   ```bash
   npm install
   npm start
   ```
2. Access the application at `http://localhost:3000` in your web browser.

## 6. Troubleshooting
- If you encounter issues during deployment, run the command below for logs:
  ```bash
  flyctl logs
  ```
- Check the Fly.io documentation for common error solutions.

Feel free to customize the guide as needed for your project's requirements!  

Happy coding!