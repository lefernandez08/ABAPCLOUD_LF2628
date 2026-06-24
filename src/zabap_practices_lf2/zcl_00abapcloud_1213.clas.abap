class zcl_00abapcloud_1213 definition
  public
  final
  create public .

  public section.

    interfaces if_oo_adt_classrun.
  protected section.
  private section.
endclass.



class zcl_00abapcloud_1213 implementation.

  method if_oo_adt_classrun~main.
    out->write( 'Hello ABAP Cloud World!' ).
  endmethod.

endclass.
