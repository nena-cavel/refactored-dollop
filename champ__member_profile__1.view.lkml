view: champ__member_profile__1 {
  sql_table_name: wwi_raw_data.champ__MEMBER_PROFILE__1 ;;

  dimension: headers {
    hidden: yes
    sql: ${TABLE}.headers ;;
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

view: champ__MEMBER_PROFILE__1__headers {
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

view: champ__MEMBER_PROFILE__1__payload {
  dimension: con_weight_gain {
    type: string
    sql: ${TABLE}.con_weight_gain ;;
  }

  dimension: country_id {
    type: string
    sql: ${TABLE}.country_id ;;
  }

  dimension: created_by {
    type: string
    sql: ${TABLE}.created_by ;;
  }

  dimension: created_date {
    type: string
    sql: ${TABLE}.created_date ;;
  }

  dimension: current_height {
    type: string
    sql: ${TABLE}.current_height ;;
  }

  dimension: current_lifetime_status {
    type: string
    sql: ${TABLE}.current_lifetime_status ;;
  }

  dimension: current_weight {
    type: string
    sql: ${TABLE}.current_weight ;;
  }

  dimension: employee_id {
    type: string
    sql: ${TABLE}.employee_id ;;
  }

  dimension: enrollment_date {
    type: string
    sql: ${TABLE}.enrollment_date ;;
  }

  dimension: entry_date {
    type: string
    sql: ${TABLE}.entry_date ;;
  }

  dimension: goal_weight {
    type: string
    sql: ${TABLE}.goal_weight ;;
  }

  dimension: last_achieved_milestone_id {
    type: string
    sql: ${TABLE}.last_achieved_milestone_id ;;
  }

  dimension: last_attendance_date {
    type: string
    sql: ${TABLE}.last_attendance_date ;;
  }

  dimension: last_contact_date {
    type: string
    sql: ${TABLE}.last_contact_date ;;
  }

  dimension: last_note_entry_date {
    type: string
    sql: ${TABLE}.last_note_entry_date ;;
  }

  dimension: last_prompt_date {
    type: string
    sql: ${TABLE}.last_prompt_date ;;
  }

  dimension: last_upd_by {
    type: string
    sql: ${TABLE}.last_upd_by ;;
  }

  dimension: last_upd_date {
    type: string
    sql: ${TABLE}.last_upd_date ;;
  }

  dimension: location_id {
    type: string
    sql: ${TABLE}.location_id ;;
  }

  dimension: meeting_occurrence_id {
    type: string
    sql: ${TABLE}.meeting_occurrence_id ;;
  }

  dimension: miss_week_pass_count {
    type: string
    sql: ${TABLE}.miss_week_pass_count ;;
  }

  dimension: miss_week_pass_date {
    type: string
    sql: ${TABLE}.miss_week_pass_date ;;
  }

  dimension: number_weeks_attended {
    type: string
    sql: ${TABLE}.number_weeks_attended ;;
  }

  dimension: personal_goal {
    type: string
    sql: ${TABLE}.personal_goal ;;
  }

  dimension: previous_lifetime_status {
    type: string
    sql: ${TABLE}.previous_lifetime_status ;;
  }

  dimension: session_no {
    type: string
    sql: ${TABLE}.session_no ;;
  }

  dimension: start_height {
    type: string
    sql: ${TABLE}.start_height ;;
  }

  dimension: start_weight {
    type: string
    sql: ${TABLE}.start_weight ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }

  dimension: uuid {
    type: string
    sql: ${TABLE}.uuid ;;
  }

  dimension: weight_gain {
    type: string
    sql: ${TABLE}.weight_gain ;;
  }
}
