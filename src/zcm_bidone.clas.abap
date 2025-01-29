"! <p class="shorttext synchronized">Consumption model for client proxy - generated</p>
"! This class has been generated based on the metadata with namespace
"! <em>bidone</em>
CLASS zcm_bidone DEFINITION
  PUBLIC
  INHERITING FROM /iwbep/cl_v4_abs_pm_model_prov
  CREATE PUBLIC.

  PUBLIC SECTION.

    TYPES:
      "! <p class="shorttext synchronized">Utenti</p>
      BEGIN OF tys_utenti_2,
        "! <em>Key property</em> user_id
        user_id TYPE int1,
        "! name
        name    TYPE c LENGTH 50,
        "! surname
        surname TYPE c LENGTH 50,
        "! role
        role    TYPE c LENGTH 50,
      END OF tys_utenti_2,
      "! <p class="shorttext synchronized">List of Utenti</p>
      tyt_utenti_2 TYPE STANDARD TABLE OF tys_utenti_2 WITH DEFAULT KEY.


    CONSTANTS:
      "! <p class="shorttext synchronized">Internal Names of the entity sets</p>
      BEGIN OF gcs_entity_set,
        "! Utenti
        "! <br/> Collection of type 'Utenti'
        utenti TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'UTENTI',
      END OF gcs_entity_set .

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal names for entity types</p>
      BEGIN OF gcs_entity_type,
        "! <p class="shorttext synchronized">Internal names for Utenti</p>
        "! See also structure type {@link ..tys_utenti_2}
        BEGIN OF utenti_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF utenti_2,
      END OF gcs_entity_type.


    METHODS /iwbep/if_v4_mp_basic_pm~define REDEFINITION.


  PRIVATE SECTION.

    "! <p class="shorttext synchronized">Model</p>
    DATA mo_model TYPE REF TO /iwbep/if_v4_pm_model.


    "! <p class="shorttext synchronized">Define Utenti</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_utenti_2 RAISING /iwbep/cx_gateway.

ENDCLASS.


CLASS zcm_bidone IMPLEMENTATION.

  METHOD /iwbep/if_v4_mp_basic_pm~define.

    mo_model = io_model.
    mo_model->set_schema_namespace( 'bidone' ) ##NO_TEXT.

    def_utenti_2( ).

  ENDMETHOD.


  METHOD def_utenti_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'UTENTI_2'
                                    is_structure              = VALUE tys_utenti_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'Utenti' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'UTENTI' ).
    lo_entity_set->set_edm_name( 'Utenti' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'USER_ID' ).
    lo_primitive_property->set_edm_name( 'user_id' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Byte' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'NAME' ).
    lo_primitive_property->set_edm_name( 'name' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 50 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SURNAME' ).
    lo_primitive_property->set_edm_name( 'surname' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 50 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ROLE' ).
    lo_primitive_property->set_edm_name( 'role' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 50 ) ##NUMBER_OK.

  ENDMETHOD.


ENDCLASS.
