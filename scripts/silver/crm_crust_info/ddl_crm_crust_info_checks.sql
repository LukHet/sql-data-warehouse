-- checking if id is unique and not null
SELECT
	cst_id,
	COUNT(*)
FROM bronze.crm_cust_info
GROUP BY cst_id
HAVING COUNT(*) > 1 OR cst_id IS NULL

-- checking for spaces in first name
SELECT
	cst_firstname
FROM bronze.crm_cust_info
WHERE cst_firstname != TRIM(cst_firstname)

-- checking for spaces in last name
SELECT
	cst_lastname
FROM bronze.crm_cust_info
WHERE cst_lastname != TRIM(cst_lastname)

-- checking distinction of gender
SELECT DISTINCT 
	cst_gndr
FROM bronze.crm_cust_info

-- checking distinction of martial status
SELECT DISTINCT 
	cst_material_status
FROM bronze.crm_cust_info
