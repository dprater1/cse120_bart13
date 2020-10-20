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

/*
Assets
    AssetNum
    Reading
    Reading_Date
    delta (change in reading)
    Reading_source
    enter_date
    description
*/
create table assets (
    a_assetNum integer(),
    a_reading integer(),
    a_desc char(255)
);

/*
Power Meter Data
    BARTDept
    AssetNum
    Reading
    EnterDate
*/


/*
AFC Meter Data

*/