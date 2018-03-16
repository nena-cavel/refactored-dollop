connection: "prod-data-playground-blast-std-bq"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

datagroup: nc_test_dau_mau_project_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: nc_test_dau_mau_project_default_datagroup

explore: daily_active_users {}

explore: dau_mau_table {}


explore: monthly_active_users {
  join: daily_active_users  {
   sql_on: ${monthly_active_users.date_month} = ${daily_active_users.date_month};;
  type: left_outer
  relationship: one_to_many
  }

}
