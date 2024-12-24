with
    renamed as (
        select
            cast(PRODUCTID as int) as pk_product,
            -- cast(PRODUCTSUBCATEGORYID as int) as fk_product_subcategory,
            -- cast(PRODUCTMODELID as int) as fk_product_model,
            -- cast(SELLSTARTDATE as date) as date_sell_start,
            -- cast(SELLENDDATE as date) as date_sell_end,
            -- cast(MODIFIEDDATE as date) as date_modified,
            -- cast(DISCONTINUEDDATE as int) as date_discontinued,
            -- cast(SAFETYSTOCKLEVEL as int) as safety_stock_level,
            -- cast(REORDERPOINT as int) as reorder_point,
            cast(STANDARDCOST as numeric(18, 2)) as standard_cost,
            cast(LISTPRICE as numeric(18, 2)) as list_price,
            cast(WEIGHT as numeric(18, 2)) as weight,
            -- cast(DAYSTOMANUFACTURE as int) as days_to_manufacture,
            cast(NAME as string) as name,
            -- cast(PRODUCTNUMBER as string) as product_number,
            -- cast(MAKEFLAG as boolean) as make_flag,
            -- cast(FINISHEDGOODSFLAG as boolean) as finished_goods_flag,
            -- cast(COLOR as string) as color,
            -- cast(SIZE as string) as size,
            -- cast(SIZEUNITMEASURECODE as string) as size_unit_measure_code,
            -- cast(WEIGHTUNITMEASURECODE as string) as weight_unit_measure_code,
            -- cast(PRODUCTLINE as string) as product_line,
            -- cast(CLASS as string) as class,
            -- cast(STYLE as string) as style,
            -- cast(ROWGUID as string) as row_guid
        from {{ source('erp', 'product') }}
    )

select *
from renamed
