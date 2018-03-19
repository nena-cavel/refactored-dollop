view: dotcom__1__email_distribution {
  sql_table_name: wwi_raw_data.dotcom__1__EMAIL_DISTRIBUTION ;;

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

view: dotcom__1__EMAIL_DISTRIBUTION__partitions {
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

view: dotcom__1__EMAIL_DISTRIBUTION__headers {
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

view: dotcom__1__EMAIL_DISTRIBUTION__payload {
  dimension: activelink_email_option {
    type: string
    sql: ${TABLE}.activelink_email_option ;;
  }

  dimension: al_reminder_option {
    type: string
    sql: ${TABLE}.al_reminder_option ;;
  }

  dimension: approved_flag {
    type: string
    sql: ${TABLE}.approved_flag ;;
  }

  dimension: community_email_option {
    type: string
    sql: ${TABLE}.community_email_option ;;
  }

  dimension: diabetes_email_option {
    type: string
    sql: ${TABLE}.diabetes_email_option ;;
  }

  dimension: email_address {
    type: string
    sql: ${TABLE}.email_address ;;
  }

  dimension: email_dist_user_type_id {
    type: string
    sql: ${TABLE}.email_dist_user_type_id ;;
  }

  dimension: email_type_id {
    type: string
    sql: ${TABLE}.email_type_id ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: last_upd_by {
    type: string
    sql: ${TABLE}.last_upd_by ;;
  }

  dimension: last_upd_date {
    type: string
    sql: ${TABLE}.last_upd_date ;;
  }

  dimension: member_no {
    type: string
    sql: ${TABLE}.member_no ;;
  }

  dimension: newsletter_option_hash {
    type: string
    sql: ${TABLE}.newsletter_option_hash ;;
  }

  dimension: obsolete_flag {
    type: string
    sql: ${TABLE}.obsolete_flag ;;
  }

  dimension: optin_dt {
    type: string
    sql: ${TABLE}.optin_dt ;;
  }

  dimension: progress_report_email_option {
    type: string
    sql: ${TABLE}.progress_report_email_option ;;
  }

  dimension: site_id {
    type: string
    sql: ${TABLE}.site_id ;;
  }

  dimension: trig_msg_option {
    type: string
    sql: ${TABLE}.trig_msg_option ;;
  }

  dimension: uuid {
    type: string
    sql: ${TABLE}.uuid ;;
  }

  dimension: visitor_id {
    type: string
    sql: ${TABLE}.visitor_id ;;
  }
}
