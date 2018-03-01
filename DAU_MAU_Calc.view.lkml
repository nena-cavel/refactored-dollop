view: dau_mau_calc {
  derived_table: {
    sql: SELECT
    date(blast.monthly_active_users) as date
    ,active_users(blast_monthly_active_users) as monthly_actives
    FROM blast.monthly_active_users
    ;;
    }
  }
