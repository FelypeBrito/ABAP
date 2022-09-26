class ZCL_ABAP_TYPES_STRING definition
  public
  create public .

public section.

  methods CONSTRUCTOR
    importing
      !STRING_VALUE type STRING .
  methods TRIM
    returning
      value(STRING_VALUE) type STRING .
  methods UPPER
    returning
      value(STRING_VALUE) type STRING .
  methods REPLACE
    importing
      !PATTERN type STRING
      !REPLACE type STRING
    returning
      value(STRING_VALUE) type STRING .
  methods GET_VALUE
    returning
      value(STRING_VALUE) type STRING .
protected section.
private section.

  constants STD_SEPARATOR type CHAR1 value '|' ##NO_TEXT.
  data VALUE type STRING .
ENDCLASS.



CLASS ZCL_ABAP_TYPES_STRING IMPLEMENTATION.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Public Method ZCL_ABAP_TYPES_STRING->CONSTRUCTOR
* +-------------------------------------------------------------------------------------------------+
* | [--->] STRING_VALUE                   TYPE        STRING
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD constructor.
    me->value = string_value.
  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Public Method ZCL_ABAP_TYPES_STRING->GET_VALUE
* +-------------------------------------------------------------------------------------------------+
* | [<-()] STRING_VALUE                   TYPE        STRING
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD get_value.

    string_value = me->value.
  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Public Method ZCL_ABAP_TYPES_STRING->REPLACE
* +-------------------------------------------------------------------------------------------------+
* | [--->] PATTERN                        TYPE        STRING
* | [--->] REPLACE                        TYPE        STRING
* | [<-()] STRING_VALUE                   TYPE        STRING
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD replace.
    string_value = me->value.
    REPLACE ALL OCCURRENCES OF pattern
    IN string_value WITH replace.

  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Public Method ZCL_ABAP_TYPES_STRING->TRIM
* +-------------------------------------------------------------------------------------------------+
* | [<-()] STRING_VALUE                   TYPE        STRING
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD trim.
    string_value = me->value.
    CONDENSE string_value.

  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Public Method ZCL_ABAP_TYPES_STRING->UPPER
* +-------------------------------------------------------------------------------------------------+
* | [<-()] STRING_VALUE                   TYPE        STRING
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD upper.
    string_value = me->value.
    TRANSLATE string_value TO UPPER CASE.

  ENDMETHOD.
ENDCLASS.