view: core_profile_service__1__profile_event {
  sql_table_name: wwi_raw_data.core_profile_service__1__ProfileEvent ;;

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

view: core_profile_service__1__ProfileEvent__partitions {
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

view: core_profile_service__1__ProfileEvent__headers {
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

view: core_profile_service__1__ProfileEvent__payload {
  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: account_status {
    hidden: yes
    sql: ${TABLE}.accountStatus ;;
  }

  dimension: account_subscriptions {
    hidden: yes
    sql: ${TABLE}.accountSubscriptions ;;
  }

  dimension: acquisition_id {
    type: string
    sql: ${TABLE}.acquisitionId ;;
  }

  dimension: active {
    type: string
    sql: ${TABLE}.active ;;
  }

  dimension: additional_settings {
    hidden: yes
    sql: ${TABLE}.additionalSettings ;;
  }

  dimension: address {
    hidden: yes
    sql: ${TABLE}.address ;;
  }

  dimension: avatar_url {
    type: string
    sql: ${TABLE}.avatarUrl ;;
  }

  dimension: birth_date {
    type: string
    sql: ${TABLE}.birthDate ;;
  }

  dimension: cell_phone {
    type: string
    sql: ${TABLE}.cellPhone ;;
  }

  dimension: classic_country {
    type: string
    sql: ${TABLE}.classicCountry ;;
  }

  dimension: classic_locale {
    type: string
    sql: ${TABLE}.classicLocale ;;
  }

  dimension: communication_preferences {
    type: string
    sql: ${TABLE}.communicationPreferences ;;
  }

  dimension: contact_info {
    hidden: yes
    sql: ${TABLE}.contactInfo ;;
  }

  dimension: contact_infol {
    hidden: yes
    sql: ${TABLE}.contactInfol ;;
  }

  dimension: current_timestamp {
    type: string
    sql: ${TABLE}.currentTimestamp ;;
  }

  dimension: daily_points_plus_target {
    type: string
    sql: ${TABLE}.dailyPointsPlusTarget ;;
  }

  dimension: dpt_adjustment {
    type: string
    sql: ${TABLE}.dptAdjustment ;;
  }

  dimension: email {
    hidden: yes
    sql: ${TABLE}.email ;;
  }

  dimension: email_preferences {
    hidden: yes
    sql: ${TABLE}.emailPreferences ;;
  }

  dimension: enrollment_date {
    type: string
    sql: ${TABLE}.enrollmentDate ;;
  }

  dimension: enrolment_date {
    type: string
    sql: ${TABLE}.enrolmentDate ;;
  }

  dimension: entitlements {
    type: string
    sql: ${TABLE}.entitlements ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.firstName ;;
  }

  dimension: first_rollover_date {
    type: string
    sql: ${TABLE}.firstRolloverDate ;;
  }

  dimension: freestyle_activation_date {
    type: string
    sql: ${TABLE}.freestyleActivationDate ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: goal_weight {
    type: string
    sql: ${TABLE}.goalWeight ;;
  }

  dimension: goal_weight_units {
    type: string
    sql: ${TABLE}.goalWeightUnits ;;
  }

  dimension: height {
    type: string
    sql: ${TABLE}.height ;;
  }

  dimension: identity {
    hidden: yes
    sql: ${TABLE}.identity ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.lastName ;;
  }

  dimension: localdate {
    type: string
    sql: ${TABLE}.localdate ;;
  }

  dimension: middle_initial {
    type: string
    sql: ${TABLE}.middleInitial ;;
  }

  dimension: newletter_option {
    type: string
    sql: ${TABLE}.newletterOption ;;
  }

  dimension: newsletter_option {
    type: string
    sql: ${TABLE}.newsletterOption ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.notes ;;
  }

  dimension: nursing_mother {
    type: string
    sql: ${TABLE}.nursingMother ;;
  }

  dimension: opt_in {
    type: string
    sql: ${TABLE}.optIn ;;
  }

  dimension: phone {
    hidden: yes
    sql: ${TABLE}.phone ;;
  }

  dimension: plan {
    type: string
    sql: ${TABLE}.plan ;;
  }

  dimension: points_program {
    type: string
    sql: ${TABLE}.pointsProgram ;;
  }

  dimension: preferred_height_weight_units {
    type: string
    sql: ${TABLE}.preferredHeightWeightUnits ;;
  }

  dimension: promotion_id {
    type: string
    sql: ${TABLE}.promotionId ;;
  }

  dimension: referral_id {
    type: string
    sql: ${TABLE}.referralId ;;
  }

  dimension: referrer_site {
    type: string
    sql: ${TABLE}.referrerSite ;;
  }

  dimension: registration_date {
    type: string
    sql: ${TABLE}.registrationDate ;;
  }

  dimension: rollover {
    type: string
    sql: ${TABLE}.rollover ;;
  }

  dimension: send_registeration_email {
    type: string
    sql: ${TABLE}.sendRegisterationEmail ;;
  }

  dimension: smart_points_activation_date {
    type: string
    sql: ${TABLE}.smartPointsActivationDate ;;
  }

  dimension: start_weight {
    type: string
    sql: ${TABLE}.startWeight ;;
  }

  dimension: swapping_mode {
    type: string
    sql: ${TABLE}.swappingMode ;;
  }

  dimension: timestamp {
    type: string
    sql: ${TABLE}.timestamp ;;
  }

  dimension: timezone {
    type: string
    sql: ${TABLE}.timezone ;;
  }

  dimension: timezone_offset {
    type: string
    sql: ${TABLE}.timezoneOffset ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: tracking_mode {
    type: string
    sql: ${TABLE}.trackingMode ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: units {
    type: string
    sql: ${TABLE}.units ;;
  }

  dimension: user_alt_id {
    type: string
    sql: ${TABLE}.userAltId ;;
  }

  dimension: user_entitlements {
    type: string
    sql: ${TABLE}.userEntitlements ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.userId ;;
  }

  dimension: username {
    type: string
    sql: ${TABLE}.username ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }

  dimension: weekly_points_plus_allowance {
    type: string
    sql: ${TABLE}.weeklyPointsPlusAllowance ;;
  }

  dimension: weigh_in_day {
    type: string
    sql: ${TABLE}.weighInDay ;;
  }

  dimension: weight {
    type: string
    sql: ${TABLE}.weight ;;
  }

  dimension: weight_in_day {
    type: string
    sql: ${TABLE}.weightInDay ;;
  }

  dimension: weight_loss_mode {
    type: string
    sql: ${TABLE}.weightLossMode ;;
  }

  dimension: wpa_adjustment {
    type: string
    sql: ${TABLE}.wpaAdjustment ;;
  }

  dimension: ww_mobile {
    type: string
    sql: ${TABLE}.wwMobile ;;
  }

  dimension: wwuuid {
    type: string
    sql: ${TABLE}.wwuuid ;;
  }

  dimension: zip_work {
    type: string
    sql: ${TABLE}.zipWork ;;
  }
}

view: core_profile_service__1__ProfileEvent__payload__account_subscriptions {
  dimension: current_transaction {
    hidden: yes
    sql: ${TABLE}.currentTransaction ;;
  }

  dimension: history_transactions {
    type: string
    sql: ${TABLE}.historyTransactions ;;
  }
}

view: core_profile_service__1__ProfileEvent__payload__account_subscriptions__current_transaction {
  dimension: corporate {
    type: string
    sql: ${TABLE}.corporate ;;
  }

  dimension: enrollment_date {
    type: string
    sql: ${TABLE}.enrollmentDate ;;
  }

  dimension: main_program {
    hidden: yes
    sql: ${TABLE}.mainProgram ;;
  }

  dimension: member_no {
    type: string
    sql: ${TABLE}.memberNo ;;
  }

  dimension: new_program {
    hidden: yes
    sql: ${TABLE}.newProgram ;;
  }

  dimension: next_bill_date {
    type: string
    sql: ${TABLE}.nextBillDate ;;
  }

  dimension: payment_plan {
    type: string
    sql: ${TABLE}.paymentPlan ;;
  }

  dimension: plan_end_date {
    type: string
    sql: ${TABLE}.planEndDate ;;
  }

  dimension: plan_months {
    type: string
    sql: ${TABLE}.planMonths ;;
  }

  dimension: renewal_date {
    type: string
    sql: ${TABLE}.renewalDate ;;
  }

  dimension: user_name {
    type: string
    sql: ${TABLE}.userName ;;
  }

  dimension: user_type {
    hidden: yes
    sql: ${TABLE}.userType ;;
  }
}

view: core_profile_service__1__ProfileEvent__payload__account_subscriptions__current_transaction__main_program {
  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: add_on_monthly_fee {
    type: string
    sql: ${TABLE}.addOnMonthlyFee ;;
  }

  dimension: amount {
    type: string
    sql: ${TABLE}.amount ;;
  }

  dimension: amount_formatted {
    type: string
    sql: ${TABLE}.amountFormatted ;;
  }

  dimension: copay {
    type: string
    sql: ${TABLE}.copay ;;
  }

  dimension: country_id {
    type: string
    sql: ${TABLE}.countryId ;;
  }

  dimension: discount {
    type: string
    sql: ${TABLE}.discount ;;
  }

  dimension: latest_transaction_date {
    type: string
    sql: ${TABLE}.latestTransactionDate ;;
  }

  dimension: monthly_fee {
    type: string
    sql: ${TABLE}.monthlyFee ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: number_of_months {
    type: string
    sql: ${TABLE}.numberOfMonths ;;
  }

  dimension: product_id {
    type: string
    sql: ${TABLE}.productId ;;
  }

  dimension: registration_fee {
    type: string
    sql: ${TABLE}.registrationFee ;;
  }

  dimension: roles_group {
    hidden: yes
    sql: ${TABLE}.rolesGroup ;;
  }

  dimension: total_amount {
    type: string
    sql: ${TABLE}.totalAmount ;;
  }
}

view: core_profile_service__1__ProfileEvent__payload__account_subscriptions__current_transaction__main_program__roles_group {
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

view: core_profile_service__1__ProfileEvent__payload__account_subscriptions__current_transaction__new_program {
  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: add_on_monthly_fee {
    type: string
    sql: ${TABLE}.addOnMonthlyFee ;;
  }

  dimension: amount {
    type: string
    sql: ${TABLE}.amount ;;
  }

  dimension: amount_formatted {
    type: string
    sql: ${TABLE}.amountFormatted ;;
  }

  dimension: copay {
    type: string
    sql: ${TABLE}.copay ;;
  }

  dimension: country_id {
    type: string
    sql: ${TABLE}.countryId ;;
  }

  dimension: discount {
    type: string
    sql: ${TABLE}.discount ;;
  }

  dimension: monthly_fee {
    type: string
    sql: ${TABLE}.monthlyFee ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: number_of_months {
    type: string
    sql: ${TABLE}.numberOfMonths ;;
  }

  dimension: product_id {
    type: string
    sql: ${TABLE}.productId ;;
  }

  dimension: registration_fee {
    type: string
    sql: ${TABLE}.registrationFee ;;
  }

  dimension: roles_group {
    hidden: yes
    sql: ${TABLE}.rolesGroup ;;
  }
}

view: core_profile_service__1__ProfileEvent__payload__account_subscriptions__current_transaction__new_program__roles_group {
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

view: core_profile_service__1__ProfileEvent__payload__account_subscriptions__current_transaction__user_type {
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

view: core_profile_service__1__ProfileEvent__payload__contact_info {
  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }
}

view: core_profile_service__1__ProfileEvent__payload__email_preferences {
  dimension: e_newsletter_email {
    type: string
    sql: ${TABLE}.eNewsletterEmail ;;
  }

  dimension: reminder_email {
    type: string
    sql: ${TABLE}.reminderEmail ;;
  }

  dimension: special_offers_email {
    type: string
    sql: ${TABLE}.specialOffersEmail ;;
  }
}

view: core_profile_service__1__ProfileEvent__payload__phone {
  dimension: cell {
    type: string
    sql: ${TABLE}.cell ;;
  }

  dimension: home {
    type: string
    sql: ${TABLE}.home ;;
  }
}

view: core_profile_service__1__ProfileEvent__payload__contact_infol {
  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }
}

view: core_profile_service__1__ProfileEvent__payload__account_status__shipping_address {
  dimension: address_line1 {
    type: string
    sql: ${TABLE}.addressLine1 ;;
  }

  dimension: address_line2 {
    type: string
    sql: ${TABLE}.addressLine2 ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country_id {
    type: string
    sql: ${TABLE}.countryId ;;
  }

  dimension: country_name {
    type: string
    sql: ${TABLE}.countryName ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}.postalCode ;;
  }

  dimension: state_id {
    type: string
    sql: ${TABLE}.stateId ;;
  }

  dimension: state_name {
    type: string
    sql: ${TABLE}.stateName ;;
  }

  dimension: state_name_details {
    type: string
    sql: ${TABLE}.stateNameDetails ;;
  }
}

view: core_profile_service__1__ProfileEvent__payload__account_status__billing_address {
  dimension: address_line1 {
    type: string
    sql: ${TABLE}.addressLine1 ;;
  }

  dimension: address_line2 {
    type: string
    sql: ${TABLE}.addressLine2 ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country_id {
    type: string
    sql: ${TABLE}.countryId ;;
  }

  dimension: country_name {
    type: string
    sql: ${TABLE}.countryName ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.firstName ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.lastName ;;
  }

  dimension: pin_number {
    type: string
    sql: ${TABLE}.pinNumber ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}.postalCode ;;
  }

  dimension: state_id {
    type: string
    sql: ${TABLE}.stateId ;;
  }

  dimension: state_name {
    type: string
    sql: ${TABLE}.stateName ;;
  }

  dimension: state_name_details {
    type: string
    sql: ${TABLE}.stateNameDetails ;;
  }
}

view: core_profile_service__1__ProfileEvent__payload__account_status__payment_info {
  dimension: cc_exp_date {
    type: string
    sql: ${TABLE}.ccExpDate ;;
  }

  dimension: cc_number {
    type: string
    sql: ${TABLE}.ccNumber ;;
  }

  dimension: payment_type {
    type: string
    sql: ${TABLE}.paymentType ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
}

view: core_profile_service__1__ProfileEvent__payload__identity {
  dimension: classic {
    type: string
    sql: ${TABLE}.classic ;;
  }

  dimension: facebook {
    type: string
    sql: ${TABLE}.facebook ;;
  }
}

view: core_profile_service__1__ProfileEvent__payload__additional_settings {
  dimension: classic_settings_client_id {
    type: string
    sql: ${TABLE}.classicSettingsClientId ;;
  }

  dimension: classic_settings_client_name {
    type: string
    sql: ${TABLE}.classicSettingsClientName ;;
  }

  dimension: classic_settings_client_unique_id {
    type: string
    sql: ${TABLE}.classicSettingsClientUniqueID ;;
  }

  dimension: classic_settings_contract_no {
    type: string
    sql: ${TABLE}.classicSettingsContractNo ;;
  }

  dimension: classic_settings_employee_id {
    type: string
    sql: ${TABLE}.classicSettingsEmployeeId ;;
  }

  dimension: classic_settings_is_fran_flag {
    type: string
    sql: ${TABLE}.classicSettingsIsFranFlag ;;
  }

  dimension: classic_settings_life_time_flag {
    type: string
    sql: ${TABLE}.classicSettingsLifeTimeFlag ;;
  }

  dimension: classic_settings_monthly_pass_id {
    type: string
    sql: ${TABLE}.classicSettingsMonthlyPassId ;;
  }

  dimension: classic_settings_user_personal_id {
    type: string
    sql: ${TABLE}.classicSettingsUserPersonalId ;;
  }

  dimension: completed_smart_point_assessment {
    type: string
    sql: ${TABLE}.completedSmartPointAssessment ;;
  }

  dimension: email_preference {
    type: string
    sql: ${TABLE}.emailPreference ;;
  }

  dimension: email_preferences {
    type: string
    sql: ${TABLE}.emailPreferences ;;
  }

  dimension: has_completed_activity_assessment {
    type: string
    sql: ${TABLE}.hasCompletedActivityAssessment ;;
  }

  dimension: has_completed_personal_assessment {
    type: string
    sql: ${TABLE}.hasCompletedPersonalAssessment ;;
  }

  dimension: has_seen_personal_assessment {
    type: string
    sql: ${TABLE}.hasSeenPersonalAssessment ;;
  }

  dimension: optin10_diabetesemail {
    type: string
    sql: ${TABLE}.optin10_diabetesemail ;;
  }

  dimension: optin1_newsletter {
    type: string
    sql: ${TABLE}.optin1_newsletter ;;
  }

  dimension: optin2_specialoffers {
    type: string
    sql: ${TABLE}.optin2_specialoffers ;;
  }

  dimension: optin3_reminders {
    type: string
    sql: ${TABLE}.optin3_reminders ;;
  }

  dimension: optin4_other {
    type: string
    sql: ${TABLE}.optin4_other ;;
  }

  dimension: optin5_communityemail {
    type: string
    sql: ${TABLE}.optin5_communityemail ;;
  }

  dimension: optin6_progressreport {
    type: string
    sql: ${TABLE}.optin6_progressreport ;;
  }

  dimension: optin7_trigerredmessage {
    type: string
    sql: ${TABLE}.optin7_trigerredmessage ;;
  }

  dimension: optin8_activelinkreport {
    type: string
    sql: ${TABLE}.optin8_activelinkreport ;;
  }

  dimension: optin9_activelinkreminder {
    type: string
    sql: ${TABLE}.optin9_activelinkreminder ;;
  }

  dimension: other {
    type: string
    sql: ${TABLE}.other ;;
  }

  dimension: swapping_mode_changed_date {
    type: string
    sql: ${TABLE}.swappingModeChangedDate ;;
  }
}

view: core_profile_service__1__ProfileEvent__payload__email {
  dimension: personal {
    type: string
    sql: ${TABLE}.personal ;;
  }
}

view: core_profile_service__1__ProfileEvent__payload__address__shipping {
  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: extended_address {
    type: string
    sql: ${TABLE}.extendedAddress ;;
  }

  dimension: latitude {
    type: string
    sql: ${TABLE}.latitude ;;
  }

  dimension: locality {
    type: string
    sql: ${TABLE}.locality ;;
  }

  dimension: longitude {
    type: string
    sql: ${TABLE}.longitude ;;
  }

  dimension: post_office_box {
    type: string
    sql: ${TABLE}.postOfficeBox ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}.postalCode ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: street_address {
    type: string
    sql: ${TABLE}.streetAddress ;;
  }
}

view: core_profile_service__1__ProfileEvent__payload__address__home {
  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: extended_address {
    type: string
    sql: ${TABLE}.extendedAddress ;;
  }

  dimension: latitude {
    type: string
    sql: ${TABLE}.latitude ;;
  }

  dimension: locality {
    type: string
    sql: ${TABLE}.locality ;;
  }

  dimension: longitude {
    type: string
    sql: ${TABLE}.longitude ;;
  }

  dimension: post_office_box {
    type: string
    sql: ${TABLE}.postOfficeBox ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}.postalCode ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: street_address {
    type: string
    sql: ${TABLE}.streetAddress ;;
  }
}

view: core_profile_service__1__ProfileEvent__payload__account_status {
  dimension: billing_address {
    hidden: yes
    sql: ${TABLE}.billingAddress ;;
  }

  dimension: payment_info {
    hidden: yes
    sql: ${TABLE}.paymentInfo ;;
  }

  dimension: shipping_address {
    hidden: yes
    sql: ${TABLE}.shippingAddress ;;
  }
}

view: core_profile_service__1__ProfileEvent__payload__address {
  dimension: home {
    hidden: yes
    sql: ${TABLE}.home ;;
  }

  dimension: shipping {
    hidden: yes
    sql: ${TABLE}.shipping ;;
  }
}
