TABLES: mara.


SELECTION-SCREEN: BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.

  PARAMETERS: p_ex TYPE mara-matnr.

  SELECT-OPTIONS: so_matkl FOR mara-matkl.

  PARAMETERS: p_chkbox AS CHECKBOX DEFAULT 'X'.


  SELECTION-SCREEN BEGIN OF LINE.
  PARAMETERS: p_r1 RADIOBUTTON GROUP rad1 DEFAULT 'X'.
  SELECTION-SCREEN COMMENT 5(7) TEXT-002.
  SELECTION-SCREEN END OF LINE.

  SELECTION-SCREEN BEGIN OF LINE.
  PARAMETERS: p_r2 RADIOBUTTON GROUP rad1.
  SELECTION-SCREEN COMMENT 5(7) TEXT-003.
  SELECTION-SCREEN END OF LINE.


SELECTION-SCREEN: END OF BLOCK b1.