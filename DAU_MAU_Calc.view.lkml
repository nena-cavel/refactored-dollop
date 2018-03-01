view: dau_mau_calc {
  derived_table: {
    sql: SELECT
     monthly_active_users.date as date
   , monthly_active_users.active_users as monthly_actives
    FROM wwi-data-playground-3:blast.monthly_active_users
    ;;
  }
    dimension: date {
      type: date
      sql: [${TABLE}].month_date ;;
  }
    measure: monthly_actives  {
      type: number
      sql: [${TABLE}].monthly_actives;;
    }
  }
