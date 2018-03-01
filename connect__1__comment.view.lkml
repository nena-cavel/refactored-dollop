view: connect__1__comment {
  sql_table_name: wwi_raw_data.connect__1__Comment ;;

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

view: connect__1__Comment__partitions {
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

view: connect__1__Comment__headers {
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

view: connect__1__Comment__payload__comment {
  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: content {
    type: string
    sql: ${TABLE}.content ;;
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

  dimension: post {
    hidden: yes
    sql: ${TABLE}.post ;;
  }

  dimension: updated_at {
    type: string
    sql: ${TABLE}.updated_at ;;
  }

  dimension: user {
    hidden: yes
    sql: ${TABLE}.user ;;
  }

  dimension: uuid {
    type: string
    sql: ${TABLE}.uuid ;;
  }
}

view: connect__1__Comment__payload__comment__post {
  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: content {
    type: string
    sql: ${TABLE}.content ;;
  }

  dimension: media {
    type: string
    sql: ${TABLE}.media ;;
  }

  dimension: subclass {
    type: string
    sql: ${TABLE}.subclass ;;
  }

  dimension: user {
    hidden: yes
    sql: ${TABLE}.user ;;
  }

  dimension: uuid {
    type: string
    sql: ${TABLE}.uuid ;;
  }
}

view: connect__1__Comment__payload__comment__post__user {
  dimension: locale {
    type: string
    sql: ${TABLE}.locale ;;
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

view: connect__1__Comment__payload__comment__user {
  dimension: locale {
    type: string
    sql: ${TABLE}.locale ;;
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

view: connect__1__Comment__payload {
  dimension: comment {
    hidden: yes
    sql: ${TABLE}.comment ;;
  }
}
