-- ACNN_DB.mdb  ->  Table_Event_Response : add Group + Date columns (run ONCE)
-- Access: open ACNN_DB.mdb > Create > Query Design > close the table dialog > SQL View.
-- Paste ONE statement at a time, press Run (!), then paste the next one.

ALTER TABLE Table_Event_Response ADD COLUMN Event_Group TEXT(100);

ALTER TABLE Table_Event_Response ADD COLUMN Event_Date DATETIME;

-- Existing 21 conclave pictures -> put them in a group (date is optional, use your real event date):
UPDATE Table_Event_Response SET Event_Group = 'Academia-Industry Conclave Hydroelectric Cell - Nanotechnology Revelutionizing Engergy Generation';

UPDATE Table_Event_Response SET Event_Date = #9/14/2024#;

-- From now on, for each new picture just fill Event_Group (any heading text) and Event_Date in the table.
-- Same Event_Group text => same section on the home page. Date is shown as a calendar tile on the picture.
-- Rows with an empty Event_Group stay under the old fixed heading, so nothing breaks if you skip it.
