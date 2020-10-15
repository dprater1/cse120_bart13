
-- Filter completed work orders by status

/*
WorkOrders
    WONum
    Description
    Alias
    Location
    Work_type
    Asset_type
    Status
    BARTDept
    Work_accomp_desc
*/

create table WorkOrder (
    WO_num decimal() not null,
    WO_desc char(255) not null,
    WO_alias decimal() not null,
    WO_location char(255) not null,
    WO_workType char(2) not null,
    WO_assetType char(255) not null,
    WO_status char(255) not null,
    WO_BARTdept char(255) not null,
    WO_work_accomp_desc char(255) not null
);

-- Connect WO and location by WO_num

/*
WO_Loc
    WO_num
    location
    location_desc

*/

create table WorkOrder_Loc (
    WO_l_num decimal() not null,
    WO_l_location char(255) not null,
    WO_l_locDesc char(255) not null
);

/*
WO_Status
    WONum
    Status
    report_date
    start_date (act_start)
    finish_date (act_finish)
    labor_hours
*/

create table WorkOrder_status (
    WO_s_num decimal() not null,
    WO_s_status char(255) not null,
    WO_s_reportDate decimal() not null,
    WO_s_startDate decimal() not null,
    WO_s_finishDate decimal() not null,
    WO_s_laborHours decimal() not null
);

/*
WO_ProbDesc
    WONum
    Problem_code_desc
    reasons_to_repair_desc
    component_desc
    part_failure_desc
*/

create table WorkOrder_ProbDesc (
    WO_pd_num decimal() not null,
    WO_pd_codeDesc char(255) not null,
    WO_pd_reasonDesc char(255) not null,
    WO_pd_componentDesc char(255) not null,
    WO_pd_partfailDesc char(255) not null
);

-- Meter Readings

/*
Meter_WorkOrder
    PS_Project
    WO_num
    Department
    Location
    goal_group
    type
    TPID
    goal
    units
    reported_date
    Description
    status
*/

create table Meter_WorkOrder (
    m_WO_PSproject char(7) not null,
    m_WO_num decimal() not null,
    m_WO_dept char(255) not null,
    m_WO_loc char(255) not null,
    m_WO_goalGroup char(255) not null,
    m_WO_type char(255) not null,
    m_WO_tpid decimal() not null,
    m_WO_goal char(255) not null,
    m_WO_goal decimal() not null,
    m_WO_units char(255) not null,
    m_WO_reportDate char(255) not null,
    m_WO_desc char(255) not null,
    m_WO_status char(255) not null
);

-- Meter WO and Meters Connected/organized via goal group

/*
Meters
    Meter_Name
    Goal_Group
    Meter_Reading
    Reading_date
    Meter_Description
    
*/

create table Meters (
    meter_name char(255) not null,
    meter_goalGroup char(255) not null,
    meter_reading decimal() not null,
    meter_desc char(255) not null
);
-- Meter WO and Projects connected by PS_Project
-- Linked via goal group

/*
Projects
    PS_Project
    Description
    Activity
    Activity_Desc
*/
create table Projects (

);