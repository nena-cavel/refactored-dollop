view: dau_mau_calc {
  derived_table: {
    sql: SELECT
    date(blast.monthly_active_users) as date
    ,active_users(blast_monthly_active_users) as monthly_actives
    FROM blast.monthly_active_users
    ;;
  }
    dimension: date {
      type: date_month
      sql: [${TABLE}].month_date ;;
  }
    measure: monthly_actives  {
      type: number
      sql: [${TABLE}].monthly_actives;;
    }
  }
