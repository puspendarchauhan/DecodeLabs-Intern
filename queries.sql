-- View data
SELECT * FROM Orders;

-- Highest priced orders
SELECT Product, TotalPrice FROM Orders ORDER BY TotalPrice DESC;

-- Credit card orders
SELECT * FROM Orders WHERE PaymentMethod='Credit Card';

-- Orders by product
SELECT Product, COUNT(*) AS TotalOrders FROM Orders GROUP BY Product;

-- Revenue by payment method
SELECT PaymentMethod, SUM(TotalPrice) AS Revenue
FROM Orders GROUP BY PaymentMethod;

-- Average order value
SELECT AVG(TotalPrice) AS AverageOrderValue FROM Orders;

-- Orders by status
SELECT OrderStatus, COUNT(*) AS Total FROM Orders GROUP BY OrderStatus;

-- Referral source
SELECT ReferralSource, COUNT(*) AS Customers
FROM Orders GROUP BY ReferralSource ORDER BY Customers DESC;

-- Coupon usage
SELECT CouponCode, COUNT(*) AS UsageCount
FROM Orders GROUP BY CouponCode;

-- Quantity sold
SELECT Product, SUM(Quantity) AS TotalQuantitySold
FROM Orders GROUP BY Product ORDER BY TotalQuantitySold DESC;

-- Average product price
SELECT Product, AVG(UnitPrice) AS AvgPrice FROM Orders GROUP BY Product;

-- Expensive orders
SELECT * FROM Orders WHERE TotalPrice>1000;

-- Cancelled orders
SELECT * FROM Orders WHERE OrderStatus='Cancelled';

-- Avg order by payment
SELECT PaymentMethod, AVG(TotalPrice) FROM Orders GROUP BY PaymentMethod;

-- Yearly revenue
SELECT YEAR(Date) AS Year, SUM(TotalPrice) AS Revenue
FROM Orders GROUP BY YEAR(Date);
