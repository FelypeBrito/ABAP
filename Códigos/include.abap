*&---------------------------------------------------------------------*
*& Include          ZINCLUDE2
*&---------------------------------------------------------------------*

DATA my_string TYPE REF TO zcl_abap_types_string.
DATA my_string1 TYPE REF TO zcl_abap_types_string.

START-OF-SELECTION.

  CREATE OBJECT my_string EXPORTING string_value = 'Vida longa e próspera ao TDD'.

  WRITE: / 'Trim:', my_string->trim( ).
  WRITE: / 'Upper:',  my_string->upper( ).
  WRITE: / 'Replace:',  my_string->replace( pattern = 'TDD' replace = 'ABAP').
  WRITE: / 'Value:', my_string->get_value( ).