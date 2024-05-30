-- Delete a specific hardware item from the CookingHardware table
DELETE FROM dbo.CookingHardware
WHERE hardwareId = 20;

-- Retrieve all remaining hardware items from the CookingHardware table
SELECT * FROM dbo.CookingHardware;
