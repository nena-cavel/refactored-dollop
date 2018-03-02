view: daily_active_users {
  sql_table_name: blast.daily_active_users ;;

  dimension: date {
    type:  date
    datatype: date
    sql: ${TABLE}.date ;;
  }

  measure: active_users {
    type:  number
    sql:  ${TABLE} ;;
  }

}
