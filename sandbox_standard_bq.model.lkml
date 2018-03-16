connection: "sandbox-bq-standard-sql"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

# NOTE: please see https://looker.com/docs/r/sql/bigquery?version=5.2
# NOTE: for BigQuery specific considerations

explore: connect__1__like {}
