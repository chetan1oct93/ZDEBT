CLASS zinsert_data_cs DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.


CLASS zinsert_data_cs IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA wa_tvarvc TYPE ztvarvc.




        " Define the variable details
    wa_tvarvc-name = 'DEBTORCATEGORY'. " Name of TVARVC variable
    wa_tvarvc-numb = '05'.
    wa_tvarvc-type = 'S'.                " P = Parameter, S = Select-Option
    wa_tvarvc-sign = 'I'.                " I = Include
    wa_tvarvc-opti = 'EQ'.               " EQ = Equal
    wa_tvarvc-low  = 'V'.         " The value to set

    MODIFY ztvarvc FROM @wa_tvarvc.
  ENDMETHOD.
ENDCLASS.
