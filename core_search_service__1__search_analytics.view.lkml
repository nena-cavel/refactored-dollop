view: core_search_service__1__search_analytics {
  sql_table_name: wwi_raw_data.core_search_service__1__searchAnalytics ;;

  dimension: action {
    type: string
    sql: ${TABLE}.action ;;
  }

  dimension: message_id {
    type: string
    sql: ${TABLE}.messageId ;;
  }

  dimension: payload {
    hidden: yes
    sql: ${TABLE}.payload ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

view: core_search_service__1__searchAnalytics__payload {
  dimension: activity_id {
    type: string
    sql: ${TABLE}.activityId ;;
  }

  dimension: context {
    type: string
    sql: ${TABLE}.context ;;
  }

  dimension: default_portion_description {
    type: string
    sql: ${TABLE}.defaultPortionDescription ;;
  }

  dimension: default_portion_id {
    type: string
    sql: ${TABLE}.defaultPortionId ;;
  }

  dimension: default_portion_quantity {
    type: string
    sql: ${TABLE}.defaultPortionQuantity ;;
  }

  dimension: food_id {
    type: string
    sql: ${TABLE}.foodId ;;
  }

  dimension: full_query {
    type: string
    sql: ${TABLE}.fullQuery ;;
  }

  dimension: market {
    type: string
    sql: ${TABLE}.market ;;
  }

  dimension: search_position {
    type: string
    sql: ${TABLE}.searchPosition ;;
  }

  dimension: search_term {
    type: string
    sql: ${TABLE}.searchTerm ;;
  }

  dimension: tracked_portion_description {
    type: string
    sql: ${TABLE}.trackedPortionDescription ;;
  }

  dimension: tracked_portion_id {
    type: string
    sql: ${TABLE}.trackedPortionId ;;
  }

  dimension: tracked_quantity {
    type: string
    sql: ${TABLE}.trackedQuantity ;;
  }

  dimension: uuid {
    type: string
    sql: ${TABLE}.uuid ;;
  }

  dimension: version_id {
    type: string
    sql: ${TABLE}.versionId ;;
  }
}
