view: dotcom__1__member_program {
  sql_table_name: wwi_raw_data.dotcom__1__MEMBER_PROGRAM ;;

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

view: dotcom__1__MEMBER_PROGRAM__partitions {
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

view: dotcom__1__MEMBER_PROGRAM__headers {
  dimension: action {
    type: string
    sql: ${TABLE}.action ;;
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

view: dotcom__1__MEMBER_PROGRAM__payload {
  dimension: activity_target {
    type: string
    sql: ${TABLE}.activity_target ;;
  }

  dimension: bank_bal_exp_dt {
    type: string
    sql: ${TABLE}.bank_bal_exp_dt ;;
  }

  dimension: bank_balance {
    type: string
    sql: ${TABLE}.bank_balance ;;
  }

  dimension: callcntr_activation_date {
    type: string
    sql: ${TABLE}.callcntr_activation_date ;;
  }

  dimension: diet_cat_id {
    type: string
    sql: ${TABLE}.diet_cat_id ;;
  }

  dimension: food_weight_loss_system_id {
    type: string
    sql: ${TABLE}.food_weight_loss_system_id ;;
  }

  dimension: getting_started_flag {
    type: string
    sql: ${TABLE}.getting_started_flag ;;
  }

  dimension: journal_eow_day {
    type: string
    sql: ${TABLE}.journal_eow_day ;;
  }

  dimension: journal_view_id {
    type: string
    sql: ${TABLE}.journal_view_id ;;
  }

  dimension: last_upd_by {
    type: string
    sql: ${TABLE}.last_upd_by ;;
  }

  dimension: last_upd_date {
    type: string
    sql: ${TABLE}.last_upd_date ;;
  }

  dimension: life_time_date {
    type: string
    sql: ${TABLE}.life_time_date ;;
  }

  dimension: maint_increment {
    type: string
    sql: ${TABLE}.maint_increment ;;
  }

  dimension: measurement_pref_id {
    type: string
    sql: ${TABLE}.measurement_pref_id ;;
  }

  dimension: member_no {
    type: string
    sql: ${TABLE}.member_no ;;
  }

  dimension: menu_plan_id {
    type: string
    sql: ${TABLE}.menu_plan_id ;;
  }

  dimension: obsolete_flag {
    type: string
    sql: ${TABLE}.obsolete_flag ;;
  }

  dimension: offline_leader_code {
    type: string
    sql: ${TABLE}.offline_leader_code ;;
  }

  dimension: plan_type_id {
    type: string
    sql: ${TABLE}.plan_type_id ;;
  }

  dimension: points_target_upd_date {
    type: string
    sql: ${TABLE}.points_target_upd_date ;;
  }

  dimension: pref_week_weigh_day {
    type: string
    sql: ${TABLE}.pref_week_weigh_day ;;
  }

  dimension: program_duration {
    type: string
    sql: ${TABLE}.program_duration ;;
  }

  dimension: program_end_date {
    type: string
    sql: ${TABLE}.program_end_date ;;
  }

  dimension: program_setup_date {
    type: string
    sql: ${TABLE}.program_setup_date ;;
  }

  dimension: pv2_conversion_flag {
    type: string
    sql: ${TABLE}.pv2_conversion_flag ;;
  }

  dimension: pv2_cutoff_date {
    type: string
    sql: ${TABLE}.pv2_cutoff_date ;;
  }

  dimension: reference_id {
    type: string
    sql: ${TABLE}.reference_id ;;
  }

  dimension: site_id {
    type: string
    sql: ${TABLE}.site_id ;;
  }

  dimension: target_lower_value {
    type: string
    sql: ${TABLE}.target_lower_value ;;
  }

  dimension: target_upper_value {
    type: string
    sql: ${TABLE}.target_upper_value ;;
  }

  dimension: target_value {
    type: string
    sql: ${TABLE}.target_value ;;
  }

  dimension: tenure_week_start_date {
    type: string
    sql: ${TABLE}.tenure_week_start_date ;;
  }

  dimension: use_new_conv_factor {
    type: string
    sql: ${TABLE}.use_new_conv_factor ;;
  }

  dimension: uuid {
    type: string
    sql: ${TABLE}.uuid ;;
  }

  dimension: weekly_points_allowance {
    type: string
    sql: ${TABLE}.weekly_points_allowance ;;
  }

  dimension: weigh_loc_code {
    type: string
    sql: ${TABLE}.weigh_loc_code ;;
  }

  dimension: weight_loss_goal_lbs {
    type: string
    sql: ${TABLE}.weight_loss_goal_lbs ;;
  }

  dimension: weight_loss_goal_percent {
    type: string
    sql: ${TABLE}.weight_loss_goal_percent ;;
  }

  dimension: weight_tracker_status {
    type: string
    sql: ${TABLE}.weight_tracker_status ;;
  }
}
