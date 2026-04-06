CLASS lhc_ZIV_DEBTCAT DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.
    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      IMPORTING REQUEST requested_authorizations FOR ziv_debtcat RESULT result.
    METHODS companymgmntmasterupdate FOR MODIFY
      IMPORTING keys FOR ACTION ziv_debtcat~companymgmntmasterupdate.

    METHODS debtorcategoryupload FOR MODIFY
      IMPORTING keys FOR ACTION ziv_debtcat~debtorcategoryupload.

    METHODS downloadtemplatefile FOR MODIFY
      IMPORTING keys FOR ACTION ziv_debtcat~downloadtemplatefile.

ENDCLASS.

CLASS lhc_ZIV_DEBTCAT IMPLEMENTATION.


  METHOD get_global_authorizations.
  ENDMETHOD.

  METHOD companyMgmntMasterUpdate.
  ENDMETHOD.

  METHOD debtorCategoryUpload.
  ENDMETHOD.

  METHOD downloadTemplateFile.
  ENDMETHOD.

ENDCLASS.
