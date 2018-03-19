view: dotcom__1__franchisee {
  sql_table_name: wwi_raw_data.dotcom__1__FRANCHISEE ;;

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

view: dotcom__1__FRANCHISEE__partitions {
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

view: dotcom__1__FRANCHISEE__headers {
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

view: dotcom__1__FRANCHISEE__payload {
  dimension: area_id {
    type: string
    sql: ${TABLE}.area_id ;;
  }

  dimension: franchisee_id {
    type: string
    sql: ${TABLE}.franchisee_id ;;
  }

  dimension: franchisee_phone_no {
    type: string
    sql: ${TABLE}.franchisee_phone_no ;;
  }

  dimension: francisee_name {
    type: string
    sql: ${TABLE}.francisee_name ;;
  }

  dimension: last_upd_by {
    type: string
    sql: ${TABLE}.last_upd_by ;;
  }

  dimension: last_upd_date {
    type: string
    sql: ${TABLE}.last_upd_date ;;
  }

  dimension: obsolete_flag {
    type: string
    sql: ${TABLE}.obsolete_flag ;;
  }

  dimension: owner_id {
    type: string
    sql: ${TABLE}.owner_id ;;
  }

  dimension: site_id {
    type: string
    sql: ${TABLE}.site_id ;;
  }
}
