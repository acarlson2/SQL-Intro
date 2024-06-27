/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
SELECT bestbuy.products.Name, bestbuy.categories.Name
FROM bestbuy.products
LEFT JOIN bestbuy.categories
ON products.CategoryID = categories.CategoryID
WHERE products.CategoryID = 1;
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
SELECT bestbuy.products.Name, bestbuy.products.Price, bestbuy.reviews.Rating
FROM bestbuy.products
LEFT JOIN bestbuy.reviews
ON bestbuy.products.ProductID = bestbuy.reviews.ProductID
WHERE bestbuy.reviews.Rating = 5;
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
SELECT bestbuy.employees.FirstName, bestbuy.employees.MiddleInitial, bestbuy.employees.LastName, SUM(bestbuy.sales.Quantity)
FROM bestbuy.employees
LEFT JOIN bestbuy.sales
ON bestbuy.employees.EmployeeID = bestbuy.sales.EmployeeID
GROUP BY bestbuy.employees.EmployeeID
ORDER BY SUM(bestbuy.sales.Quantity)DESC;
/* joins: find the name of the department, and the name of the category for Appliances and Games */
SELECT bestbuy.departments.Name, bestbuy.categories.Name
FROM bestbuy.departments
LEFT JOIN bestbuy.categories
ON bestbuy.departments.DepartmentID = bestbuy.categories.DepartmentID
WHERE bestbuy.categories.Name = "Appliances" OR bestbuy.categories.Name = "Games";
/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
SELECT bestbuy.products.Name, SUM(bestbuy.sales.Quantity), SUM(bestbuy.sales.PricePerUnit)
FROM bestbuy.products
LEFT JOIN bestbuy.sales
ON bestbuy.products.ProductID = bestbuy.sales.ProductID
WHERE bestbuy.products.Name = "Eagles: Hotel California";
/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
SELECT bestbuy.products.Name, bestbuy.reviews.Reviewer, bestbuy.reviews.Rating, bestbuy.reviews.Comment
FROM bestbuy.products
LEFT JOIN bestbuy.reviews
ON bestbuy.products.ProductID = bestbuy.reviews.ProductID
WHERE bestbuy.products.Name = "Visio TV" AND bestbuy.reviews.Rating = 1;
-- ------------------------------------------ Extra - May be difficult
/* Your goal is to write a query that serves as an employee sales report.
This query should return:
-  the employeeID
-  the employee's first and last name
-  the name of each product
-  and how many of that product they sold */
