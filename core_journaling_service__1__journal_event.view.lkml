view: core_journaling_service__1__journal_event {
  sql_table_name: wwi_raw_data.core_journaling_service__1__JournalEvent ;;

  dimension: headers {
    hidden: yes
    sql: ${TABLE}.headers ;;
  }

  dimension: partitions {
    hidden: yes
    sql: ${TABLE}.partitions ;;
  }

  dimension: payload {
    hidden: yes
    sql: ${TABLE}.payload ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

view: core_journaling_service__1__JournalEvent__partitions {
  dimension: day {
    type: string
    sql: ${TABLE}.day ;;
  }

  dimension: hour {
    type: string
    sql: ${TABLE}.hour ;;
  }

  dimension: month {
    type: string
    sql: ${TABLE}.month ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}.year ;;
  }
}

view: core_journaling_service__1__JournalEvent__headers {
  dimension: action {
    type: string
    sql: ${TABLE}.action ;;
  }

  dimension: event_type {
    type: string
    sql: ${TABLE}.eventType ;;
  }

  dimension: message_id {
    type: string
    sql: ${TABLE}.messageId ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }
}

view: core_journaling_service__1__JournalEvent__payload {
  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: activity_id {
    type: string
    sql: ${TABLE}.activityId ;;
  }

  dimension: activity_type {
    type: string
    sql: ${TABLE}.activityType ;;
  }

  dimension: calories {
    type: string
    sql: ${TABLE}.calories ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: completed_at {
    type: string
    sql: ${TABLE}.completedAt ;;
  }

  dimension: current_weight_in_kgs {
    type: string
    sql: ${TABLE}.currentWeightInKgs ;;
  }

  dimension: date {
    type: string
    sql: ${TABLE}.date ;;
  }

  dimension: duration {
    type: string
    sql: ${TABLE}.duration ;;
  }

  dimension: event_at {
    type: string
    sql: ${TABLE}.eventAt ;;
  }

  dimension: food_alt_id {
    type: string
    sql: ${TABLE}.foodAltId ;;
  }

  dimension: food_id {
    type: string
    sql: ${TABLE}.foodId ;;
  }

  dimension: food_name {
    type: string
    sql: ${TABLE}.foodName ;;
  }

  dimension: food_type {
    type: string
    sql: ${TABLE}.foodType ;;
  }

  dimension: food_version {
    type: string
    sql: ${TABLE}.foodVersion ;;
  }

  dimension: intensity {
    type: string
    sql: ${TABLE}.intensity ;;
  }

  dimension: is_ambulatory {
    type: string
    sql: ${TABLE}.isAmbulatory ;;
  }

  dimension: is_core {
    type: string
    sql: ${TABLE}.isCore ;;
  }

  dimension: last_updated {
    type: string
    sql: ${TABLE}.lastUpdated ;;
  }

  dimension: meal_id {
    type: string
    sql: ${TABLE}.mealId ;;
  }

  dimension: meal_version {
    type: string
    sql: ${TABLE}.mealVersion ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.notes ;;
  }

  dimension: points {
    type: string
    sql: ${TABLE}.points ;;
  }

  dimension: points_per_serving {
    type: string
    sql: ${TABLE}.pointsPerServing ;;
  }

  dimension: portion_id {
    type: string
    sql: ${TABLE}.portionId ;;
  }

  dimension: portion_measurement {
    type: string
    sql: ${TABLE}.portionMeasurement ;;
  }

  dimension: portion_size {
    type: string
    sql: ${TABLE}.portionSize ;;
  }

  dimension: ppv {
    type: string
    sql: ${TABLE}.ppv ;;
  }

  dimension: quick_add_food_id {
    type: string
    sql: ${TABLE}.quickAddFoodId ;;
  }

  dimension: smart_points {
    type: string
    sql: ${TABLE}.smartPoints ;;
  }

  dimension: smart_points_per_serving {
    type: string
    sql: ${TABLE}.smartPointsPerServing ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: spv {
    type: string
    sql: ${TABLE}.spv ;;
  }

  dimension: steps {
    type: string
    sql: ${TABLE}.steps ;;
  }

  dimension: sugar_grams {
    type: string
    sql: ${TABLE}.sugarGrams ;;
  }

  dimension: time_of_day {
    type: string
    sql: ${TABLE}.timeOfDay ;;
  }

  dimension: timestamp {
    type: string
    sql: ${TABLE}.timestamp ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: units {
    type: string
    sql: ${TABLE}.units ;;
  }

  dimension: user_agent {
    type: string
    sql: ${TABLE}.user_agent ;;
  }

  dimension: user_alt_id {
    type: string
    sql: ${TABLE}.userAltId ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.userId ;;
  }

  dimension: weight {
    type: string
    sql: ${TABLE}.weight ;;
  }

  dimension: weight_id {
    type: string
    sql: ${TABLE}.weightId ;;
  }
}
