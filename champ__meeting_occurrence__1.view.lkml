view: champ__meeting_occurrence__1 {
  sql_table_name: wwi_raw_data.champ__MEETING_OCCURRENCE__1 ;;

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

view: champ__MEETING_OCCURRENCE__1__headers {
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

view: champ__MEETING_OCCURRENCE__1__payload {
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

  dimension: day_time_code_id {
    type: string
    sql: ${TABLE}.day_time_code_id ;;
  }

  dimension: dtc_time {
    type: string
    sql: ${TABLE}.dtc_time ;;
  }

  dimension: end_date {
    type: string
    sql: ${TABLE}.end_date ;;
  }

  dimension: end_time {
    type: string
    sql: ${TABLE}.end_time ;;
  }

  dimension: last_upd_by {
    type: string
    sql: ${TABLE}.last_upd_by ;;
  }

  dimension: last_upd_date {
    type: string
    sql: ${TABLE}.last_upd_date ;;
  }

  dimension: leader_employee_id {
    type: string
    sql: ${TABLE}.leader_employee_id ;;
  }

  dimension: line_of_business_id {
    type: string
    sql: ${TABLE}.line_of_business_id ;;
  }

  dimension: location_id {
    type: string
    sql: ${TABLE}.location_id ;;
  }

  dimension: ma_meeting_id {
    type: string
    sql: ${TABLE}.ma_meeting_id ;;
  }

  dimension: meeting_number {
    type: string
    sql: ${TABLE}.meeting_number ;;
  }

  dimension: meeting_occurrence_id {
    type: string
    sql: ${TABLE}.meeting_occurrence_id ;;
  }

  dimension: meeting_occurrence_status_id {
    type: string
    sql: ${TABLE}.meeting_occurrence_status_id ;;
  }

  dimension: meeting_type_id {
    type: string
    sql: ${TABLE}.meeting_type_id ;;
  }

  dimension: start_date {
    type: string
    sql: ${TABLE}.start_date ;;
  }
}
