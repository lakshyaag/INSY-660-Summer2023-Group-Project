# INSY 660 Group Project

This repo contains the code for a chatbot for an online book retailer. More details can be found in the project proposal.

## Team members

1. Hao Duong
2. Om Sangwan
3. Lakshya Agarwal

## How to run

1. Ensure the database is populated and running locally. The database is a MySQL database.
2. To import the database, import the `argo_bookstore_insy660.sql` file into MySQL. The database is populated with sample data.
3. Change the `db_connection_str` variable to the connection details for your database. For example:

    ```python
    db_connection_str = "mysql+pymysql://root:root@localhost:3306/argo_bookstore_insy660"
    ```

    Ensure that the port number, username, password, and database name correspond to your database.

4. With the database running, run the `INSY660_Argo Bookstore Chatbot_Code_Group 4.ipynb` file to use the chatbot.

## Schema

![Database schema](ERD.png "Database schema")
