class zcl_test_lock_object_lf definition
  public
  final
  create public .

  public section.

    interfaces if_oo_adt_classrun .
  protected section.
  private section.
endclass.



class zcl_test_lock_object_lf implementation.


  method if_oo_adt_classrun~main.

    try.
        data(lock) = cl_abap_lock_object_factory=>get_instance( iv_name = 'EZLF_TRAVEL' ).

        lock->enqueue( it_parameter = value #( ( name = 'TRAVEL_UUIF' value = ref #( 'AB524EF32B9A91DE1900BC961A3CE40E' ) ) ) ).

        out->Write( | Lock Time: { cl_abap_context_info=>get_system_time( ) }| ).

        update zLF_travel
           set booking_fee = '4110.00'
          where travel_uuid = 'AB524EF32B9A91DE1900BC961A3CE40E'.

        wait up to 30 seconds.

        if sy-subrc = 0.
          		   commit work.
          		   out->Write( 'Update successful' ).
        		 else.
          		   rollback work.
          		   out->Write( 'Update failed' ).
        endif.

        lock->dequeue( ).

        out->Write( |Unlock Time: { cl_abap_context_info=>get_system_time( ) }| ).

      catch cx_abap_lock_failure into data(lx_lock_failer).

        out->Write( |Lock Failure: { lx_lock_failer->get_text( ) }| ).

      catch cx_abap_foreign_lock into data(lx_foreign_lock).

        data(locking_user) = lx_foreign_lock->user_name.
        out->Write( |Lock by user: { locking_user }| ).

    endtry.

  endmethod.
endclass.
