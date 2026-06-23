class zcl_job_exe_lg definition
  public
  final
  create public .

  public section.
    interfaces if_apj_dt_exec_object.
    interfaces if_apj_rt_exec_object.


  protected section.
  private section.
endclass.



class zcl_job_exe_lg implementation.

  method if_apj_dt_exec_object~get_parameters.

    data ls_parameter_def type line of if_apj_dt_exec_object=>tt_templ_def.

    ls_parameter_def-selname    = 'BUKRS'.
    ls_parameter_def-param_text = 'Company Code'.
    append ls_parameter_def to et_parameter_def.

  endmethod.

  method if_apj_rt_exec_object~execute.

  endmethod.

endclass.
