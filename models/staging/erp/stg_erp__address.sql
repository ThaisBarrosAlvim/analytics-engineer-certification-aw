with
    renamed as (
        select
            cast(ADDRESSID as int) as pk_address,
            cast(STATEPROVINCEID as int) as fk_state_province,
            -- cast(ADDRESSLINE1 as string) as address_line1,
            -- cast(ADDRESSLINE2 as string) as address_line2,
            cast(CITY as string) as city,
            -- cast(POSTALCODE as string) as postal_code,
            -- cast(SPATIALLOCATION as string) as spatial_location,
            -- cast(ROWGUID as string) as row_guid,
            -- cast(MODIFIEDDATE as date) as date_modified
        from {{ source('erp', 'address') }}
    )

select *
from renamed