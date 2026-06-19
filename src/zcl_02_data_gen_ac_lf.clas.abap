class zcl_02_data_gen_ac_lf definition
  public
  final
  create public .

  public section.

    interfaces if_oo_adt_classrun.

  protected section.
  private section.
endclass.

class zcl_02_data_gen_ac_lf implementation.

  method if_oo_adt_classrun~main.
    out->write( 'Adding Travel data...' ).

    delete from zlf_travel.

    insert zlf_travel from (
      select from /dmo/travel
        fields
         "client
         uuid( ) as travel_uunid,
         travel_id,
         agency_id,
         customer_id,
         begin_date,
         end_date,
         booking_fee,
         total_price,
         currency_code,
         description,
         case status when 'B' then 'A'
                     when 'P' then 'O'
                     when 'N' then 'O'
                     else 'X' end as overall_status,
         createdby      as local_created_by ,
         createdat      as local_created_at ,
         lastchangedby  as local_last_changed_by,
         lastchangedat  as local_last_changed_at,
         lastchangedat  as last_changed ).

    out->write( | { sy-dbcnt } rows added. | ).

  endmethod.

endclass.

