view: daily_active_users {
  sql_table_name: blast.daily_active_users ;;

  dimension: active_users {
    type: number
    hidden: yes
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

  measure: total_active_users {
    type: sum
    sql: ${active_users} ;;
  }

  measure:  avg_daily_active_users{
    type:  average
    value_format_name: decimal_0
    sql: ${active_users} ;;
  }

  dimension: primary_key {
    hidden: yes
    primary_key:yes
    type:  date_raw
    sql: ${TABLE}.date ;;
  }
}
