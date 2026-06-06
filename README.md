
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<body>

<div class="container">

<h1>Loan Management System </h1>

<h2>Project Overview</h2>

<p>
The Loan Management System is a SQL-based database project developed using MySQL to manage and analyze loan operations efficiently. The system handles customer information, loan applications, approvals, EMI tracking, payments, penalties, credit scores, and business analytics.
</p>

<p>This project demonstrates:</p>

<ul>
<li>Database Design</li>
<li>Relational Database Management</li>
<li>SQL Query Optimization</li>
<li>Banking & Financial Analytics</li>
<li>Reporting and Business Insights</li>
</ul>

<h2>Features</h2>

<ul>
<li>Customer Management</li>
<li>Branch Management</li>
<li>Employee Management</li>
<li>Loan Application Management</li>
<li>Loan Management</li>
<li>EMI Management</li>
<li>Payment Management</li>
<li>Credit Score Management</li>
<li>Guarantor Management</li>
<li>Penalty Management</li>
<li>Document Management</li>
<li>Notification System</li>
<li>Audit Logging</li>
</ul>

<h2>Technologies Used</h2>

<table>
<tr>
<th>Technology</th>
<th>Description</th>
</tr>

<tr>
<td>MySQL</td>
<td>Database Management System</td>
</tr>

<tr>
<td>SQL</td>
<td>Query Language</td>
</tr>

<tr>
<td>MySQL Workbench</td>
<td>Database Modeling & Query Execution</td>
</tr>
</table>

<h2>Database Tables</h2>

<h2>Database Tables</h2>

<table border="1" cellpadding="8" cellspacing="0">
    <tr>
        <th>Table Name</th>
        <th>Description</th>
    </tr>

  <tr>
        <td>Branches</td>
        <td>Stores branch details.</td>
    </tr>

  <tr>
        <td>Customers</td>
        <td>Stores customer information.</td>
    </tr>

  <tr>
        <td>Customer_Address</td>
        <td>Stores customer addresses.</td>
    </tr>
    <tr>
        <td>Employees</td>
        <td>Stores employee details.</td>
    </tr>
    <tr>
        <td>Loan_Types</td>
        <td>Stores loan categories and interest rates.</td>
    </tr>
    <tr>
        <td>Loan_Applications</td>
        <td>Stores customer loan applications.</td>
    </tr>
    <tr>
        <td>Loan_Approvals</td>
        <td>Stores loan approval records.</td>
    </tr>
    <tr>
        <td>Loans</td>
        <td>Stores approved loan details.</td>
    </tr>
    <tr>
        <td>EMI_Schedule</td>
        <td>Stores EMI due dates and amounts.</td>
    </tr>
    <tr>
        <td>EMI_Payments</td>
        <td>Stores EMI payment records.</td>
    </tr>
    <tr>
        <td>Transactions</td>
        <td>Stores loan-related transactions.</td>
    </tr>
    <tr>
        <td>Guarantors</td>
        <td>Stores guarantor information.</td>
    </tr>
    <tr>
        <td>Credit_Scores</td>
        <td>Stores customer credit scores.</td>
    </tr>
    <tr>
        <td>Penalties</td>
        <td>Stores penalty details for late payments.</td>
    </tr>
    <tr>
        <td>Documents</td>
        <td>Stores customer document records.</td>
    </tr>
    <tr>
        <td>Notifications</td>
        <td>Stores customer notifications.</td>
    </tr>
    <tr>
        <td>Audit_Log</td>
        <td>Stores database activity logs.</td>
    </tr>
</table>

<h2>Entity Relationship Highlights</h2>

<ul>
<li>One branch can have multiple customers.</li>
<li>One branch can have multiple employees.</li>
<li>One customer can submit multiple loan applications.</li>
<li>One loan type can be associated with multiple loans.</li>
<li>Employees approve loan applications.</li>
<li>Approved applications generate loans.</li>
<li>One loan can have multiple EMI schedules.</li>
<li>One EMI can have payment records.</li>
<li>One loan can have multiple transactions.</li>
<li>One loan can incur multiple penalties.</li>
<li>Customers can have guarantors and credit score records.</li>
<li>Customers can upload multiple documents.</li>
<li>Customers receive notifications.</li>
</ul>

<h2>SQL Concepts Used</h2>

<ul>
<li>Joins</li>
<li>Aggregate Functions</li>
<li>Subqueries</li>
<li>Correlated Subqueries</li>
<li>Window Functions</li>
<li>Views</li>
<li>Stored Procedures</li>
<li>Triggers</li>
<li>Constraints</li>
<li>Group By & Having</li>
<li>Analytical Queries</li>
</ul>

<h2>Sample Analytical Query</h2>

<h3>Branch with Highest Loan Disbursement</h3>

<pre>
SELECT b.branch_name,
SUM(l.loan_amount) AS total_loan
FROM Branches b
JOIN Customers c ON b.branch_id=c.branch_id
JOIN Loans l ON c.customer_id=l.customer_id
GROUP BY b.branch_name
ORDER BY total_loan DESC
LIMIT 1;
</pre>

<h2>Project Objectives</h2>

<ul>
<li>Improve loan processing efficiency</li>
<li>Reduce manual record handling</li>
<li>Generate business insights</li>
<li>Support data-driven decision making</li>
<li>Analyze customer loan behavior</li>
<li>Monitor payment and default trends</li>
</ul>

<h2>Learning Outcomes</h2>

<ul>
<li>Advanced SQL Skills</li>
<li>Database Design</li>
<li>Query Optimization</li>
<li>Banking Data Analytics</li>
<li>Relational Database Modeling</li>
<li>Reporting & Dashboard Preparation</li>
</ul>

<h2>Future Enhancements</h2>

<ul>
<li>Power BI Dashboard Integration</li>
<li>Loan Risk Prediction using Machine Learning</li>
<li>Web Application Integration</li>
<li>Role-Based Authentication</li>
<li>Real-Time Notification System</li>
<li>Predictive Analytics for Loan Defaults</li>
</ul>

<h2>How to Run the Project</h2>

<h3>Step 1: Install MySQL</h3>

<ul>
<li>MySQL Server</li>
<li>MySQL Workbench</li>
</ul>

<h3>Step 2: Create Database</h3>

<pre>
CREATE DATABASE Loan_Management_System;
USE Loan_Management_System;
</pre>

<h3>Step 3: Execute SQL Scripts</h3>

<p>Run the table creation and data insertion scripts.</p>

<h3>Step 4: Execute Queries</h3>

<p>Run analytical queries and generate reports.</p>
<h2>Author</h2>

<p>
<strong>Sanika Narayan Dhabugade</strong><br>
B.TECH IT Student – Easa College of Engineering and Technology<br>
Interested in SQL, Power BI, Data Analytics, and Full Stack Development
</p>


<h2>Conclusion</h2>

<p>
The Loan Management System with Analytics is a real-world SQL project that demonstrates database design, relational modeling, business analytics, reporting, and query optimization. The project effectively showcases SQL proficiency and analytical skills, making it suitable for academic presentations, internships, and data analyst portfolios.
</p>

</div>

</body>
</html>
