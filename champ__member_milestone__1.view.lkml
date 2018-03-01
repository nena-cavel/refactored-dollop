view: champ__member_milestone__1 {
  sql_table_name: wwi_raw_data.champ__MEMBER_MILESTONE__1 ;;

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

view: champ__MEMBER_MILESTONE__1__headers {
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

view: champ__MEMBER_MILESTONE__1__payload {
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

  dimension: last_upd_by {
    type: string
    sql: ${TABLE}.last_upd_by ;;
  }

  dimension: last_upd_date {
    type: string
    sql: ${TABLE}.last_upd_date ;;
  }

  dimension: member_milestone_id {
    type: string
    sql: ${TABLE}.member_milestone_id ;;
  }

  dimension: milestone_id {
    type: string
    sql: ${TABLE}.milestone_id ;;
  }

  dimension: reached_date {
    type: string
    sql: ${TABLE}.reached_date ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }

  dimension: uuid {
    type: string
    sql: ${TABLE}.uuid ;;
  }

  dimension: week_no {
    type: string
    sql: ${TABLE}.week_no ;;
  }
}
