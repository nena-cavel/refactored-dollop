
# view: test_dau_mau {
#   # Or, you could make this view a derived table, like this:
#   derived_table: {
#     sql: SELECT
#         , AVERAGE(active_users) as averge_daily_active_users
#         , MAX(active_users) as max_daily_active_users
#         , MIN(active_users) as min_daily_active_users
#       FROM wwi-data-playground-3:blast.daily_active_user
#       GROUP BY month(date)
#       ;;
#   }
#
# }
