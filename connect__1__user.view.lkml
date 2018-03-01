view: connect__1__user {
  sql_table_name: wwi_raw_data.connect__1__User ;;

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

view: connect__1__User__partitions {
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

view: connect__1__User__headers {
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

view: connect__1__User__payload__user {
  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: avatar {
    type: string
    sql: ${TABLE}.avatar ;;
  }

  dimension: created_at {
    type: string
    sql: ${TABLE}.created_at ;;
  }

  dimension: invisible {
    type: string
    sql: ${TABLE}.invisible ;;
  }

  dimension: is_deleted {
    type: string
    sql: ${TABLE}.is_deleted ;;
  }

  dimension: is_private {
    type: string
    sql: ${TABLE}.is_private ;;
  }

  dimension: locale {
    type: string
    sql: ${TABLE}.locale ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: updated_at {
    type: string
    sql: ${TABLE}.updated_at ;;
  }

  dimension: username {
    type: string
    sql: ${TABLE}.username ;;
  }

  dimension: uuid {
    type: string
    sql: ${TABLE}.uuid ;;
  }
}

view: connect__1__User__payload {
  dimension: user {
    hidden: yes
    sql: ${TABLE}.user ;;
  }
}
