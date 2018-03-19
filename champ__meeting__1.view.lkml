view: champ__meeting__1 {
  sql_table_name: wwi_raw_data.champ__MEETING__1 ;;

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

view: champ__MEETING__1__headers {
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

view: champ__MEETING__1__payload {
  dimension: bankcount {
    type: string
    sql: ${TABLE}.bankcount ;;
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

  dimension: last_upd_by {
    type: string
    sql: ${TABLE}.last_upd_by ;;
  }

  dimension: last_upd_date {
    type: string
    sql: ${TABLE}.last_upd_date ;;
  }

  dimension: meeting_date {
    type: string
    sql: ${TABLE}.meeting_date ;;
  }

  dimension: meeting_id {
    type: string
    sql: ${TABLE}.meeting_id ;;
  }

  dimension: meeting_occurrence_id {
    type: string
    sql: ${TABLE}.meeting_occurrence_id ;;
  }

  dimension: meeting_status_id {
    type: string
    sql: ${TABLE}.meeting_status_id ;;
  }

  dimension: tally_process_monitor_id {
    type: string
    sql: ${TABLE}.tally_process_monitor_id ;;
  }

  dimension: tally_status_id {
    type: string
    sql: ${TABLE}.tally_status_id ;;
  }

  dimension: transfer_status_id {
    type: string
    sql: ${TABLE}.transfer_status_id ;;
  }
}
