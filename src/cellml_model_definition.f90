! The module for mapping to the C++ (via C) code
MODULE CELLML_MODEL_DEFINITION
  USE, INTRINSIC :: ISO_C_BINDING
  IMPLICIT NONE
  INTERFACE
     FUNCTION CREATE_CELLML_MODEL_DEFINITION (URI) &
          BIND(C, NAME='create_cellml_model_definition_f')
       USE, INTRINSIC :: ISO_C_BINDING, ONLY: C_PTR
       CHARACTER, DIMENSION(*) :: URI
       TYPE (C_PTR) :: CREATE_CELLML_MODEL_DEFINITION
     END FUNCTION CREATE_CELLML_MODEL_DEFINITION
     SUBROUTINE DESTROY_CELLML_MODEL_DEFINITION (MODEL) &
          BIND(C,NAME='destroy_cellml_model_definition_f')
       USE, INTRINSIC :: ISO_C_BINDING, ONLY: C_PTR
       TYPE (C_PTR) :: MODEL
     END SUBROUTINE DESTROY_CELLML_MODEL_DEFINITION
     INTEGER (C_INT) FUNCTION CELLML_MODEL_DEFINITION_GET_INITIAL_VALUE (MODEL,NAME,VALUE) &
          BIND(C,NAME='cellml_model_definition_get_initial_value_f')
       USE, INTRINSIC :: ISO_C_BINDING, ONLY: C_PTR,C_INT,C_DOUBLE
       TYPE (C_PTR), VALUE :: MODEL
       CHARACTER, DIMENSION(*) :: NAME
       REAL (C_DOUBLE) :: VALUE
     END FUNCTION CELLML_MODEL_DEFINITION_GET_INITIAL_VALUE
     INTEGER (C_INT) FUNCTION CELLML_MODEL_DEFINITION_GET_VARIABLE_TYPE (MODEL,NAME,VARIABLE_TYPE) &
          BIND(C,NAME='cellml_model_definition_get_variable_type_f')
       USE, INTRINSIC :: ISO_C_BINDING, ONLY: C_PTR,C_INT
       TYPE (C_PTR), VALUE :: MODEL
       CHARACTER, DIMENSION(*) :: NAME
       INTEGER (C_INT) :: VARIABLE_TYPE
     END FUNCTION CELLML_MODEL_DEFINITION_GET_VARIABLE_TYPE
     INTEGER (C_INT) FUNCTION CELLML_MODEL_DEFINITION_GET_VARIABLE_INDEX (MODEL,NAME,VARIABLE_INDEX) &
          BIND(C,NAME='cellml_model_definition_get_variable_index_f')
       USE, INTRINSIC :: ISO_C_BINDING, ONLY: C_PTR,C_INT
       TYPE (C_PTR), VALUE :: MODEL
       CHARACTER, DIMENSION(*) :: NAME
       INTEGER (C_INT) :: VARIABLE_INDEX
     END FUNCTION CELLML_MODEL_DEFINITION_GET_VARIABLE_INDEX
     INTEGER (C_INT) FUNCTION CELLML_MODEL_DEFINITION_SET_VARIABLE_AS_KNOWN (MODEL,NAME) &
          BIND(C,NAME='cellml_model_definition_set_variable_as_known_f')
       USE, INTRINSIC :: ISO_C_BINDING, ONLY: C_PTR,C_INT
       TYPE (C_PTR), VALUE :: MODEL
       CHARACTER, DIMENSION(*) :: NAME
     END FUNCTION CELLML_MODEL_DEFINITION_SET_VARIABLE_AS_KNOWN
     INTEGER (C_INT) FUNCTION CELLML_MODEL_DEFINITION_SET_VARIABLE_AS_WANTED (MODEL,NAME) &
          BIND(C,NAME='cellml_model_definition_set_variable_as_wanted_f')
       USE, INTRINSIC :: ISO_C_BINDING, ONLY: C_PTR,C_INT
       TYPE (C_PTR), VALUE :: MODEL
       CHARACTER, DIMENSION(*) :: NAME
     END FUNCTION CELLML_MODEL_DEFINITION_SET_VARIABLE_AS_WANTED
     SUBROUTINE CELLML_MODEL_DEFINITION_SET_SAVE_TEMP_FILES (MODEL,STATE) &
          BIND(C,NAME='cellml_model_definition_set_save_temp_files_f')
       USE, INTRINSIC :: ISO_C_BINDING, ONLY: C_PTR,C_INT
       TYPE (C_PTR), VALUE :: MODEL
       INTEGER (C_INT), VALUE :: STATE
     END SUBROUTINE CELLML_MODEL_DEFINITION_SET_SAVE_TEMP_FILES
     INTEGER (C_INT) FUNCTION CELLML_MODEL_DEFINITION_GET_SAVE_TEMP_FILES &
          (MODEL) &
          BIND(C,NAME='cellml_model_definition_get_save_temp_files_f')
       USE, INTRINSIC :: ISO_C_BINDING, ONLY: C_PTR,C_INT
       TYPE (C_PTR), VALUE :: MODEL
     END FUNCTION CELLML_MODEL_DEFINITION_GET_SAVE_TEMP_FILES
     INTEGER (C_INT) FUNCTION CELLML_MODEL_DEFINITION_INSTANTIATE &
          (MODEL) &
          BIND(C,NAME='cellml_model_definition_instantiate_f')
       USE, INTRINSIC :: ISO_C_BINDING, ONLY: C_PTR,C_INT
       TYPE (C_PTR), VALUE :: MODEL
     END FUNCTION CELLML_MODEL_DEFINITION_INSTANTIATE
     INTEGER (C_INT) FUNCTION CELLML_MODEL_DEFINITION_GET_N_CONSTANTS &
          (MODEL) &
          BIND(C,NAME='cellml_model_definition_get_n_constants_f')
       USE, INTRINSIC :: ISO_C_BINDING, ONLY: C_PTR,C_INT
       TYPE (C_PTR), VALUE :: MODEL
     END FUNCTION CELLML_MODEL_DEFINITION_GET_N_CONSTANTS
     INTEGER (C_INT) FUNCTION CELLML_MODEL_DEFINITION_GET_N_RATES &
          (MODEL) &
          BIND(C,NAME='cellml_model_definition_get_n_rates_f')
       USE, INTRINSIC :: ISO_C_BINDING, ONLY: C_PTR,C_INT
       TYPE (C_PTR), VALUE :: MODEL
     END FUNCTION CELLML_MODEL_DEFINITION_GET_N_RATES
     INTEGER (C_INT) FUNCTION CELLML_MODEL_DEFINITION_GET_N_ALGEBRAIC &
          (MODEL) &
          BIND(C,NAME='cellml_model_definition_get_n_algebraic_f')
       USE, INTRINSIC :: ISO_C_BINDING, ONLY: C_PTR,C_INT
       TYPE (C_PTR), VALUE :: MODEL
     END FUNCTION CELLML_MODEL_DEFINITION_GET_N_ALGEBRAIC
     SUBROUTINE CELLML_MODEL_DEFINITION_CALL_RHS_ROUTINE &
          (MODEL,VOI,STATES,RATES,WANTED,KNOWN) &
          BIND(C,NAME='cellml_model_definition_call_rhs_routine_f')
       USE, INTRINSIC :: ISO_C_BINDING, ONLY: C_PTR,C_DOUBLE
       TYPE (C_PTR), VALUE :: MODEL
       REAL (C_DOUBLE), VALUE :: VOI
       REAL (C_DOUBLE) :: STATES(*)
       REAL (C_DOUBLE) :: RATES(*)
       REAL (C_DOUBLE) :: WANTED(*)
       REAL (C_DOUBLE) :: KNOWN(*)
     END SUBROUTINE CELLML_MODEL_DEFINITION_CALL_RHS_ROUTINE
  END INTERFACE
END MODULE CELLML_MODEL_DEFINITION
