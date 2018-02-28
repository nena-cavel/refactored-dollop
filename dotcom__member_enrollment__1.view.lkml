view: dotcom__member_enrollment__1 {
  sql_table_name: wwi_raw_data.dotcom__MEMBER_ENROLLMENT__1 ;;

  dimension: headers {
    hidden: yes
    sql: ${TABLE}.headers ;;
  }

  dimension: payload {
    hidden: yes
    sql: ${TABLE}.payload ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

view: dotcom__MEMBER_ENROLLMENT__1__headers {
  dimension: action {
    type: string
    sql: ${TABLE}.action ;;
  }

  dimension: message_id {
    type: string
    sql: ${TABLE}.messageId ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }
}

view: dotcom__MEMBER_ENROLLMENT__1__payload {
  dimension: cureent_height {
    type: string
    sql: ${TABLE}.cureent_height ;;
  }

  dimension: current_waist {
    type: string
    sql: ${TABLE}.current_waist ;;
  }

  dimension: current_weight {
    type: string
    sql: ${TABLE}.current_weight ;;
  }

  dimension: direct {
    type: string
    sql: ${TABLE}.direct ;;
  }

  dimension: e_member_type_id {
    type: string
    sql: ${TABLE}.e_member_type_id ;;
  }

  dimension: employee_id {
    type: string
    sql: ${TABLE}.employee_id ;;
  }

  dimension: enrol_duration {
    type: string
    sql: ${TABLE}.enrol_duration ;;
  }

  dimension: enrollment_date {
    type: string
    sql: ${TABLE}.enrollment_date ;;
  }

  dimension: franchisee_id {
    type: string
    sql: ${TABLE}.franchisee_id ;;
  }

  dimension: initial_program_id {
    type: string
    sql: ${TABLE}.initial_program_id ;;
  }

  dimension: last_upd_by {
    type: string
    sql: ${TABLE}.last_upd_by ;;
  }

  dimension: last_upd_date {
    type: string
    sql: ${TABLE}.last_upd_date ;;
  }

  dimension: location_code {
    type: string
    sql: ${TABLE}.location_code ;;
  }

  dimension: member_no {
    type: string
    sql: ${TABLE}.member_no ;;
  }

  dimension: mf_location_flag {
    type: string
    sql: ${TABLE}.mf_location_flag ;;
  }

  dimension: mf_location_id {
    type: string
    sql: ${TABLE}.mf_location_id ;;
  }

  dimension: new_program_id {
    type: string
    sql: ${TABLE}.new_program_id ;;
  }

  dimension: nursing_status {
    type: string
    sql: ${TABLE}.nursing_status ;;
  }

  dimension: obsolete_flag {
    type: string
    sql: ${TABLE}.obsolete_flag ;;
  }

  dimension: program_code {
    type: string
    sql: ${TABLE}.program_code ;;
  }

  dimension: program_id {
    type: string
    sql: ${TABLE}.program_id ;;
  }

  dimension: queued_member {
    type: string
    sql: ${TABLE}.queued_member ;;
  }

  dimension: rb_counter {
    type: string
    sql: ${TABLE}.rb_counter ;;
  }

  dimension: referrer_username {
    type: string
    sql: ${TABLE}.referrer_username ;;
  }

  dimension: site_id {
    type: string
    sql: ${TABLE}.site_id ;;
  }

  dimension: spcl_health_id {
    type: string
    sql: ${TABLE}.spcl_health_id ;;
  }

  dimension: sponsor_id {
    type: string
    sql: ${TABLE}.sponsor_id ;;
  }

  dimension: sponsor_relation_id {
    type: string
    sql: ${TABLE}.sponsor_relation_id ;;
  }

  dimension: sponsor_verification_value {
    type: string
    sql: ${TABLE}.sponsor_verification_value ;;
  }

  dimension: switch_program_id {
    type: string
    sql: ${TABLE}.switch_program_id ;;
  }

  dimension: tran_health_id {
    type: string
    sql: ${TABLE}.tran_health_id ;;
  }
}
