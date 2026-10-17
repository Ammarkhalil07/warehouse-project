/*

    load bronze layer tables with data from source csv files

*/
truncate table bronze.crm_cust_info;

bulk insert bronze.crm_cust_info from 'E:\Data\Project\sql-data-warehouse-project\datasets\source_crm\cust_info.csv'
    with (FIRSTROW = 2, FIELDTERMINATOR = ',', TABLOCK);


truncate table bronze.crm_prd_info;

bulk insert bronze.crm_prd_info from 'E:\Data\Project\sql-data-warehouse-project\datasets\source_crm\prd_info.csv'
    with (FIRSTROW = 2, FIELDTERMINATOR = ',', TABLOCK);


truncate table [bronze].[crm_sales_details];

bulk insert [bronze].[crm_sales_details] from 'E:\Data\Project\sql-data-warehouse-project\datasets\source_crm\sales_details.csv'
    with (FIRSTROW = 2, FIELDTERMINATOR = ',', TABLOCK);



truncate table [bronze].[erp_cust_az12];

bulk insert [bronze].[erp_cust_az12] from 'E:\Data\Project\sql-data-warehouse-project\datasets\source_erp\cust_AZ12.csv'
    with (FIRSTROW = 2, FIELDTERMINATOR = ',', TABLOCK);


    truncate table [bronze].[erp_loc_a101];

bulk insert [bronze].[erp_loc_a101] from 'E:\Data\Project\sql-data-warehouse-project\datasets\source_erp\loc_a101.csv'
    with (FIRSTROW = 2, FIELDTERMINATOR = ',', TABLOCK);


truncate table [bronze].[erp_px_cat_g1v2];

bulk insert [bronze].[erp_px_cat_g1v2] from 'E:\Data\Project\sql-data-warehouse-project\datasets\source_erp\px_cat_g1v2.csv'
    with (FIRSTROW = 2, FIELDTERMINATOR = ',', TABLOCK);
