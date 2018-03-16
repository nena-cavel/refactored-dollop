view: connect__1__like {
  sql_table_name: wwi_raw_data.connect__1__Like ;;

  dimension: headers__action {
    type: string
    sql: ${TABLE}.headers.action ;;
  }

  dimension: headers__message_id {
    type: string
    sql: ${TABLE}.headers.messageId ;;
  }

  dimension: headers__source {
    type: string
    sql: ${TABLE}.headers.source ;;
  }

  dimension_group: payload__like__created_at {
    type: time
    timeframes: [
      date,
      week,
      month,
      year
    ]
    sql: ${TABLE}.payload.like.created_at;;
    datatype: yyyymmdd
  }

  dimension: payload__like__id {
    type: string
    sql: ${TABLE}.payload.like.id ;;
  }

  dimension: payload__like__is_deleted {
    type: string
    sql: ${TABLE}.payload.like.is_deleted ;;
  }

  dimension: payload__like__likeable__content {
    type: string
    sql: ${TABLE}.payload.like.likeable.content ;;
  }

  dimension: payload__like__likeable__id {
    type: string
    sql: ${TABLE}.payload.like.likeable.id ;;
  }

  dimension: payload__like__likeable__media {
    type: string
    sql: ${TABLE}.payload.like.likeable.media ;;
  }

  dimension: payload__like__likeable__subclass {
    type: string
    sql: ${TABLE}.payload.like.likeable.subclass ;;
  }

  dimension: payload__like__likeable__type {
    type: string
    sql: ${TABLE}.payload.like.likeable.type ;;
  }

  dimension: payload__like__likeable__user__locale {
    type: string
    sql: ${TABLE}.payload.like.likeable.user.locale ;;
  }

  dimension: payload__like__likeable__user__username {
    type: string
    sql: ${TABLE}.payload.like.likeable.user.username ;;
  }

  dimension: payload__like__likeable__user__uuid {
    type: string
    sql: ${TABLE}.payload.like.likeable.user.uuid ;;
  }

  dimension: payload__like__likeable__uuid {
    type: string
    sql: ${TABLE}.payload.like.likeable.uuid ;;
  }

  dimension: payload__like__updated_at {
    type: string
    sql: ${TABLE}.payload.like.updated_at ;;
  }

  dimension: payload__like__user__locale {
    type: string
    sql: ${TABLE}.payload.like.user.locale ;;
  }

  dimension: payload__like__user__username {
    type: string
    sql: ${TABLE}.payload.like.user.username ;;
  }

  dimension: payload__like__user__uuid {
    type: string
    sql: ${TABLE}.payload.like.user.uuid ;;
  }

  measure:  number_of_likes {
    type:  count_distinct
    sql: (${payload__like__id});;
  }

  measure: count {
    type: count
    drill_fields: [payload__like__likeable__user__username, payload__like__user__username]
  }
}
