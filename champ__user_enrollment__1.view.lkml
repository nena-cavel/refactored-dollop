view: champ__user_enrollment__1 {
  sql_table_name: wwi_raw_data.champ__USER_ENROLLMENT__1 ;;

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

view: champ__USER_ENROLLMENT__1__headers {
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

view: champ__USER_ENROLLMENT__1__payload {
  dimension: calculated_date_flag {
    type: string
    sql: ${TABLE}.calculated_date_flag ;;
  }

  dimension: country_id {
    type: string
    sql: ${TABLE}.country_id ;;
  }

  dimension: created_by {
    type: string
    sql: ${TABLE}.created_by ;;
  }

  dimension: created_date {
    type: string
    sql: ${TABLE}.created_date ;;
  }

  dimension: enroll_action_id {
    type: string
    sql: ${TABLE}.enroll_action_id ;;
  }

  dimension: enroll_type_id {
    type: string
    sql: ${TABLE}.enroll_type_id ;;
  }

  dimension: enrollment_date {
    type: string
    sql: ${TABLE}.enrollment_date ;;
  }

  dimension: enrollment_id {
    type: string
    sql: ${TABLE}.enrollment_id ;;
  }

  dimension: fee_paid_flag {
    type: string
    sql: ${TABLE}.fee_paid_flag ;;
  }

  dimension: last_upd_by {
    type: string
    sql: ${TABLE}.last_upd_by ;;
  }

  dimension: last_upd_date {
    type: string
    sql: ${TABLE}.last_upd_date ;;
  }

  dimension: location_id {
    type: string
    sql: ${TABLE}.location_id ;;
  }

  dimension: meeting_user_map_id {
    type: string
    sql: ${TABLE}.meeting_user_map_id ;;
  }

  dimension: obsolete_flag {
    type: string
    sql: ${TABLE}.obsolete_flag ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }

  dimension: uuid {
    type: string
    sql: ${TABLE}.uuid ;;
  }
}
