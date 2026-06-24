class zcl_01_types definition
  public
  final
  create public .

  public section.

    interfaces if_oo_adt_classrun.
  protected section.
  private section.
endclass.



class zcl_01_types implementation.

  method if_oo_adt_classrun~main.

    data:lv_string type string,
         lv_int    type i value 2025010,
         lv_date   type d,
         lv_dec    type p length 8 decimals 2 value'202501.10',
         lv_car    type c length 10 value 'Logali'.

    lv_string = '20250110'.
    lv_date   = '20250110'.

    out->write( lv_string ).
    out->write( lv_int ).
    out->write( lv_date ).
    out->write( lv_dec ).
    out->write( lv_car ).

  endmethod.

endclass.
