view: meeting_finder_upload__1__get_locations {
  sql_table_name: wwi_raw_data.meeting_finder_upload__1__getLocations ;;

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

view: meeting_finder_upload__1__getLocations__partitions {
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

view: meeting_finder_upload__1__getLocations__headers {
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

view: meeting_finder_upload__1__getLocations__payload {
  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: address {
    hidden: yes
    sql: ${TABLE}.address ;;
  }

  dimension: area {
    type: string
    sql: ${TABLE}.area ;;
  }

  dimension: champ_enabled {
    type: string
    sql: ${TABLE}.champEnabled ;;
  }

  dimension: country_code {
    type: string
    sql: ${TABLE}.countryCode ;;
  }

  dimension: driving_direction {
    type: string
    sql: ${TABLE}.drivingDirection ;;
  }

  dimension: franchise_announcement {
    type: string
    sql: ${TABLE}.franchiseAnnouncement ;;
  }

  dimension: gcms_announcement {
    type: string
    sql: ${TABLE}.gcmsAnnouncement ;;
  }

  dimension: locale {
    type: string
    sql: ${TABLE}.locale ;;
  }

  dimension: location_announcement {
    type: string
    sql: ${TABLE}.locationAnnouncement ;;
  }

  dimension: meetings {
    hidden: yes
    sql: ${TABLE}.meetings ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: open_hours {
    hidden: yes
    sql: ${TABLE}.openHours ;;
  }

  dimension: price_zone {
    hidden: yes
    sql: ${TABLE}.priceZone ;;
  }

  dimension: short_announcement {
    type: string
    sql: ${TABLE}.shortAnnouncement ;;
  }

  dimension: slug_title_geo {
    type: string
    sql: ${TABLE}.slugTitleGeo ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
}

view: meeting_finder_upload__1__getLocations__payload__open_hours {
  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: meeting_day {
    hidden: yes
    sql: ${TABLE}.meetingDay ;;
  }

  dimension: meeting_end_time {
    type: string
    sql: ${TABLE}.meetingEndTime ;;
  }

  dimension: meeting_time {
    type: string
    sql: ${TABLE}.meetingTime ;;
  }
}

view: meeting_finder_upload__1__getLocations__payload__open_hours__meeting_day {
  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: abbr {
    type: string
    sql: ${TABLE}.abbr ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
}

view: meeting_finder_upload__1__getLocations__payload__address {
  dimension: _geoloc {
    hidden: yes
    sql: ${TABLE}._geoloc ;;
  }

  dimension: address1 {
    type: string
    sql: ${TABLE}.address1 ;;
  }

  dimension: address2 {
    type: string
    sql: ${TABLE}.address2 ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: city_slug {
    type: string
    sql: ${TABLE}.citySlug ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: customer_address_id {
    type: string
    sql: ${TABLE}.customerAddressId ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: state_name {
    type: string
    sql: ${TABLE}.stateName ;;
  }

  dimension: state_name_slug {
    type: string
    sql: ${TABLE}.stateNameSlug ;;
  }

  dimension: zip_code {
    type: zipcode
    sql: ${TABLE}.zipCode ;;
  }
}

view: meeting_finder_upload__1__getLocations__payload__address___geoloc {
  dimension: lat {
    type: string
    sql: ${TABLE}.lat ;;
  }

  dimension: lng {
    type: string
    sql: ${TABLE}.lng ;;
  }
}

view: meeting_finder_upload__1__getLocations__payload__meetings {
  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: announcement {
    type: string
    sql: ${TABLE}.announcement ;;
  }

  dimension: language {
    type: string
    sql: ${TABLE}.language ;;
  }

  dimension: meeting_day {
    hidden: yes
    sql: ${TABLE}.meetingDay ;;
  }

  dimension: meeting_leader {
    hidden: yes
    sql: ${TABLE}.meetingLeader ;;
  }

  dimension: meeting_time {
    type: string
    sql: ${TABLE}.meetingTime ;;
  }

  dimension: meeting_type {
    hidden: yes
    sql: ${TABLE}.meetingType ;;
  }
}

view: meeting_finder_upload__1__getLocations__payload__meetings__meeting_leader {
  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.firstName ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.lastName ;;
  }

  dimension: profile_items {
    hidden: yes
    sql: ${TABLE}.profileItems ;;
  }
}

view: meeting_finder_upload__1__getLocations__payload__meetings__meeting_leader__profile_items {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: profile_item_type {
    type: string
    sql: ${TABLE}.profileItemType ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }
}

view: meeting_finder_upload__1__getLocations__payload__meetings__meeting_day {
  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: abbr {
    type: string
    sql: ${TABLE}.abbr ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
}

view: meeting_finder_upload__1__getLocations__payload__meetings__meeting_type {
  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
}

view: meeting_finder_upload__1__getLocations__payload__price_zone {
  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: announcement {
    type: string
    sql: ${TABLE}.announcement ;;
  }

  dimension: callout_url_page {
    type: string
    sql: ${TABLE}.calloutUrlPage ;;
  }

  dimension: description1 {
    type: string
    sql: ${TABLE}.description1 ;;
  }

  dimension: description2 {
    type: string
    sql: ${TABLE}.description2 ;;
  }

  dimension: fran_owner_id {
    type: string
    sql: ${TABLE}.franOwnerId ;;
  }

  dimension: franchise_url {
    type: string
    sql: ${TABLE}.franchiseUrl ;;
  }

  dimension: pre_pay_available {
    type: string
    sql: ${TABLE}.prePayAvailable ;;
  }

  dimension: price_url_page {
    type: string
    sql: ${TABLE}.priceUrlPage ;;
  }

  dimension: pricing_url {
    type: string
    sql: ${TABLE}.pricingUrl ;;
  }

  dimension: weekly_fee {
    type: string
    sql: ${TABLE}.weeklyFee ;;
  }
}
