# Mike_Pizza
 A pizza place database for tracking sales, inventory, and operations, with real-time reporting
Mike's Pizza Database Project 🍕
Overview
This project is a collaborative effort between Josh Oxner and Edmond Carter, Mina to design and implement a database for Mike's Pizza, a fictional pizza business. The database is modeled using a star schema to support efficient reporting and analytics. We have also integrated real-time dashboards using tools like Tableau and Power BI to provide insights into sales, inventory, and business operations.

Project Features
Database Design:

Designed a database using a star schema for optimized reporting.
Includes fact tables for sales and dimension tables for customers, items, staff, shifts, inventory, orders, and more.
Real-Time Reporting:

Created interactive dashboards for sales analysis, inventory tracking, and staff performance.
Dashboards are designed in Tableau and Power BI, showcasing KPIs and trends.
Star Schema Design
The database is structured as follows:

Fact Table
FactSales: Captures sales data with metrics such as order amounts, quantities, and timestamps.
Dimension Tables
DimCustomer: Tracks customer details such as name and location.
DimItem: Stores menu item details and pricing.
DimStaff: Maintains staff profiles and roles.
DimShift: Logs staff shifts for operational tracking.
DimInventory: Tracks available ingredients and stock levels.
For more details, see the ERD Diagram in the documentation folder.

Tools and Technologies
Database: SQL Server
ETL: Tools
Reporting: Tableau and Power BI for dashboard creation
Dashboards
Key Dashboards
Sales Dashboard:

Visualizes daily, weekly, and monthly sales.
Highlights best-selling menu items.
Inventory Dashboard:

Tracks current stock levels and ingredient usage trends.
Flags low-stock alerts.
Staff Performance Dashboard:

Monitors staff productivity and shifts.
