USE ShopDB; 
IF EXISTS (SELECT * FROM sys.databases WHERE name = 'ShopDB')
BEGIN
    DROP DATABASE ShopDB;
END
-- Create your stored procedure here
DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(
    IN NameFilter varchar(100)
)
BEGIN
    SELECT * FROM WarehouseProductInventory WHERE ProductName like NameFilter;
END //
DELIMITER ;