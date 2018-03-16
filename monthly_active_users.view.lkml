view: monthly_active_users {
  sql_table_name: blast.monthly_active_users ;;

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

  measure: total_monthly_active_users {
    type: sum
    sql: ${active_users} ;;
  }

  measure: dau_mau {
    type:  number
    value_format_name: percent_1
    sql:  ${daily_active_users.avg_daily_active_users}*1.0/nullif(${total_monthly_active_users},0) ;;
  }


  dimension: primary_key {
    hidden: yes
    primary_key:yes
    type:  date_raw
    sql: ${TABLE}.date ;;
  }
}
