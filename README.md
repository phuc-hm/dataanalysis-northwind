# dataanalysis-northwind
**Description** Build a data pipeline and a report for a given dataset

**Use dataset:** Northwind

**Requirement:**

1. Use SSIS to load dataset into staging tables in a DBMS
- orders
- order_details
- product
- categories
- suppliers
- employees
- customers
2. Create dimension tables and fact tables from the original dataset
- factOrders
- factOrderDetails
- dimProduct (product join categories join suppliers)
- dimCustomers
- dimEmployees
- dimSupervisors (created from employees table, using key reports_to for relationship to dimEmployees)
3. Use SSIS to populate data from data source to data warehouse
4. Use Power BI or Tableau build a report from above data (use dimension / fact table)
