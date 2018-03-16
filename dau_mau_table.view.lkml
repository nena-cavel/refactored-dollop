view: dau_mau_table {
  derived_table: {
  sql: select
  avg(active_users) as avg_daily_users
  ,extract_month(date) as month
  from monthly_active_users
  group by month(date)
  ;;
  }

  measure: avg_daily_users {
    type: sum
    sql: ${TABLE}.avg_daily_users ;;
}

measure: month {
  type:  date_month
  sql: ${TABLE}.month ;;
}

}
