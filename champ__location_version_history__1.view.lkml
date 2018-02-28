view: champ__location_version_history__1 {
  sql_table_name: wwi_raw_data.champ__LOCATION_VERSION_HISTORY__1 ;;

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

view: champ__LOCATION_VERSION_HISTORY__1__headers {
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

view: champ__LOCATION_VERSION_HISTORY__1__payload {
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

  dimension: location_id {
    type: string
    sql: ${TABLE}.location_id ;;
  }

  dimension: location_mode_id {
    type: string
    sql: ${TABLE}.location_mode_id ;;
  }

  dimension: location_version_history_id {
    type: string
    sql: ${TABLE}.location_version_history_id ;;
  }

  dimension: obsolete_flag {
    type: string
    sql: ${TABLE}.obsolete_flag ;;
  }

  dimension: start_date {
    type: string
    sql: ${TABLE}.start_date ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}
