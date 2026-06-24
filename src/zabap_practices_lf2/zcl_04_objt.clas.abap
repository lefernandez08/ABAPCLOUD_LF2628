CLASS zcl_04_objt DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_04_objt IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DATA: lv_num1 TYPE i,
          lv_num2 TYPE i,
          lv_num3 TYPE i.

    lv_num1 = 4.
    lv_num2 = 15.
    lv_num3 = lv_num1 + lv_num2.

    out->write( | Value 1: { lv_num1 } Value 2: { lv_num2 } Value 2: { lv_num3 } | ).

  ENDMETHOD.

ENDCLASS.
