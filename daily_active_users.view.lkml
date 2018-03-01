view: daily_active_users {
  sql_table_name: blast.daily_active_users ;;

  dimension: active_users {
    type: number
    sql: ${TABLE}.active_users ;;
  }

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
