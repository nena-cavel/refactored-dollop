view: dotcom__1__member_affiliate_tracking {
  sql_table_name: wwi_raw_data.dotcom__1__MEMBER_AFFILIATE_TRACKING ;;

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

view: dotcom__1__MEMBER_AFFILIATE_TRACKING__partitions {
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

view: dotcom__1__MEMBER_AFFILIATE_TRACKING__headers {
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

view: dotcom__1__MEMBER_AFFILIATE_TRACKING__payload {
  dimension: affiliate_id {
    type: string
    sql: ${TABLE}.affiliate_id ;;
  }

  dimension: afl_click_date {
    type: string
    sql: ${TABLE}.afl_click_date ;;
  }

  dimension: afl_click_history {
    type: string
    sql: ${TABLE}.afl_click_history ;;
  }

  dimension: corp_click_date {
    type: string
    sql: ${TABLE}.corp_click_date ;;
  }

  dimension: corp_wellness_id {
    type: string
    sql: ${TABLE}.corp_wellness_id ;;
  }

  dimension: enrollment_date {
    type: string
    sql: ${TABLE}.enrollment_date ;;
  }

  dimension: last_upd_by {
    type: string
    sql: ${TABLE}.last_upd_by ;;
  }

  dimension: last_upd_date {
    type: string
    sql: ${TABLE}.last_upd_date ;;
  }

  dimension: member_afl_tracking_id {
    type: string
    sql: ${TABLE}.member_afl_tracking_id ;;
  }

  dimension: member_no {
    type: string
    sql: ${TABLE}.member_no ;;
  }

  dimension: obsolete_flag {
    type: string
    sql: ${TABLE}.obsolete_flag ;;
  }

  dimension: program_id {
    type: string
    sql: ${TABLE}.program_id ;;
  }

  dimension: queued_member {
    type: string
    sql: ${TABLE}.queued_member ;;
  }

  dimension: site_id {
    type: string
    sql: ${TABLE}.site_id ;;
  }

  dimension: uuid {
    type: string
    sql: ${TABLE}.uuid ;;
  }
}
