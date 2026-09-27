USE ShopDB;

DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(
    IN warehouse_id INT
)
BEGIN
    SELECT
        p.Name AS ProductName,
        SUM(pi.WarehouseAmount) AS ProductAmount
    FROM ProductInventory AS pi
    JOIN Products AS p ON p.ID = pi.ProductID
    WHERE pi.WarehouseID = warehouse_id
    GROUP BY p.Name
    ORDER BY p.Name;
END //
DELIMITER ;