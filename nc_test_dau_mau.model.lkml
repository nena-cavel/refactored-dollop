connection: "sandbox-bq-standard-sql"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

datagroup: nc_test_dau_mau_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: nc_test_dau_mau_default_datagroup

explore: cde_profile_service__1__profile_event {
  join: cde_profile_service__1__ProfileEvent__partitions {
    view_label: "Cde Profile Service 1 Profileevent: Partitions"
    sql: LEFT JOIN UNNEST([${cde_profile_service__1__ProfileEvent.partitions}]) as cde_profile_service__1__ProfileEvent__partitions ;;
    relationship: one_to_one
  }

  join: cde_profile_service__1__ProfileEvent__headers {
    view_label: "Cde Profile Service 1 Profileevent: Headers"
    sql: LEFT JOIN UNNEST([${cde_profile_service__1__ProfileEvent.headers}]) as cde_profile_service__1__ProfileEvent__headers ;;
    relationship: one_to_one
  }

  join: cde_profile_service__1__ProfileEvent__payload {
    view_label: "Cde Profile Service 1 Profileevent: Payload"
    sql: LEFT JOIN UNNEST([${cde_profile_service__1__ProfileEvent.payload}]) as cde_profile_service__1__ProfileEvent__payload ;;
    relationship: one_to_one
  }

  join: cde_profile_service__1__ProfileEvent__payload__identity {
    view_label: "Cde Profile Service 1 Profileevent: Payload Identity"
    sql: LEFT JOIN UNNEST([${cde_profile_service__1__ProfileEvent__payload.identity}]) as cde_profile_service__1__ProfileEvent__payload__identity ;;
    relationship: one_to_one
  }

  join: cde_profile_service__1__ProfileEvent__payload__additional_settings {
    view_label: "Cde Profile Service 1 Profileevent: Payload Additional Settings"
    sql: LEFT JOIN UNNEST([${cde_profile_service__1__ProfileEvent__payload.additional_settings}]) as cde_profile_service__1__ProfileEvent__payload__additional_settings ;;
    relationship: one_to_one
  }

  join: cde_profile_service__1__ProfileEvent__payload__email {
    view_label: "Cde Profile Service 1 Profileevent: Payload Email"
    sql: LEFT JOIN UNNEST([${cde_profile_service__1__ProfileEvent__payload.email}]) as cde_profile_service__1__ProfileEvent__payload__email ;;
    relationship: one_to_one
  }

  join: cde_profile_service__1__ProfileEvent__payload__address__shipping {
    view_label: "Cde Profile Service 1 Profileevent: Payload Address Shipping"
    sql: LEFT JOIN UNNEST([${cde_profile_service__1__ProfileEvent__payload__address.shipping}]) as cde_profile_service__1__ProfileEvent__payload__address__shipping ;;
    relationship: one_to_one
  }

  join: cde_profile_service__1__ProfileEvent__payload__address__home {
    view_label: "Cde Profile Service 1 Profileevent: Payload Address Home"
    sql: LEFT JOIN UNNEST([${cde_profile_service__1__ProfileEvent__payload__address.home}]) as cde_profile_service__1__ProfileEvent__payload__address__home ;;
    relationship: one_to_one
  }

  join: cde_profile_service__1__ProfileEvent__payload__phone {
    view_label: "Cde Profile Service 1 Profileevent: Payload Phone"
    sql: LEFT JOIN UNNEST([${cde_profile_service__1__ProfileEvent__payload.phone}]) as cde_profile_service__1__ProfileEvent__payload__phone ;;
    relationship: one_to_one
  }

  join: cde_profile_service__1__ProfileEvent__payload__address {
    view_label: "Cde Profile Service 1 Profileevent: Payload Address"
    sql: LEFT JOIN UNNEST([${cde_profile_service__1__ProfileEvent__payload.address}]) as cde_profile_service__1__ProfileEvent__payload__address ;;
    relationship: one_to_one
  }
}

explore: cde_profile_service__1__profile_snapshot {
  join: cde_profile_service__1__ProfileSnapshot__partitions {
    view_label: "Cde Profile Service 1 Profilesnapshot: Partitions"
    sql: LEFT JOIN UNNEST([${cde_profile_service__1__ProfileSnapshot.partitions}]) as cde_profile_service__1__ProfileSnapshot__partitions ;;
    relationship: one_to_one
  }

  join: cde_profile_service__1__ProfileSnapshot__headers {
    view_label: "Cde Profile Service 1 Profilesnapshot: Headers"
    sql: LEFT JOIN UNNEST([${cde_profile_service__1__ProfileSnapshot.headers}]) as cde_profile_service__1__ProfileSnapshot__headers ;;
    relationship: one_to_one
  }

  join: cde_profile_service__1__ProfileSnapshot__payload {
    view_label: "Cde Profile Service 1 Profilesnapshot: Payload"
    sql: LEFT JOIN UNNEST([${cde_profile_service__1__ProfileSnapshot.payload}]) as cde_profile_service__1__ProfileSnapshot__payload ;;
    relationship: one_to_one
  }

  join: cde_profile_service__1__ProfileSnapshot__payload__identity {
    view_label: "Cde Profile Service 1 Profilesnapshot: Payload Identity"
    sql: LEFT JOIN UNNEST([${cde_profile_service__1__ProfileSnapshot__payload.identity}]) as cde_profile_service__1__ProfileSnapshot__payload__identity ;;
    relationship: one_to_one
  }

  join: cde_profile_service__1__ProfileSnapshot__payload__additional_settings {
    view_label: "Cde Profile Service 1 Profilesnapshot: Payload Additional Settings"
    sql: LEFT JOIN UNNEST([${cde_profile_service__1__ProfileSnapshot__payload.additional_settings}]) as cde_profile_service__1__ProfileSnapshot__payload__additional_settings ;;
    relationship: one_to_one
  }

  join: cde_profile_service__1__ProfileSnapshot__payload__email {
    view_label: "Cde Profile Service 1 Profilesnapshot: Payload Email"
    sql: LEFT JOIN UNNEST([${cde_profile_service__1__ProfileSnapshot__payload.email}]) as cde_profile_service__1__ProfileSnapshot__payload__email ;;
    relationship: one_to_one
  }

  join: cde_profile_service__1__ProfileSnapshot__payload__address__shipping {
    view_label: "Cde Profile Service 1 Profilesnapshot: Payload Address Shipping"
    sql: LEFT JOIN UNNEST([${cde_profile_service__1__ProfileSnapshot__payload__address.shipping}]) as cde_profile_service__1__ProfileSnapshot__payload__address__shipping ;;
    relationship: one_to_one
  }

  join: cde_profile_service__1__ProfileSnapshot__payload__address__home {
    view_label: "Cde Profile Service 1 Profilesnapshot: Payload Address Home"
    sql: LEFT JOIN UNNEST([${cde_profile_service__1__ProfileSnapshot__payload__address.home}]) as cde_profile_service__1__ProfileSnapshot__payload__address__home ;;
    relationship: one_to_one
  }

  join: cde_profile_service__1__ProfileSnapshot__payload__phone {
    view_label: "Cde Profile Service 1 Profilesnapshot: Payload Phone"
    sql: LEFT JOIN UNNEST([${cde_profile_service__1__ProfileSnapshot__payload.phone}]) as cde_profile_service__1__ProfileSnapshot__payload__phone ;;
    relationship: one_to_one
  }

  join: cde_profile_service__1__ProfileSnapshot__payload__address {
    view_label: "Cde Profile Service 1 Profilesnapshot: Payload Address"
    sql: LEFT JOIN UNNEST([${cde_profile_service__1__ProfileSnapshot__payload.address}]) as cde_profile_service__1__ProfileSnapshot__payload__address ;;
    relationship: one_to_one
  }
}

explore: champ__1__meeting {
  join: champ__1__MEETING__partitions {
    view_label: "Champ 1 Meeting: Partitions"
    sql: LEFT JOIN UNNEST([${champ__1__MEETING.partitions}]) as champ__1__MEETING__partitions ;;
    relationship: one_to_one
  }

  join: champ__1__MEETING__headers {
    view_label: "Champ 1 Meeting: Headers"
    sql: LEFT JOIN UNNEST([${champ__1__MEETING.headers}]) as champ__1__MEETING__headers ;;
    relationship: one_to_one
  }

  join: champ__1__MEETING__payload {
    view_label: "Champ 1 Meeting: Payload"
    sql: LEFT JOIN UNNEST([${champ__1__MEETING.payload}]) as champ__1__MEETING__payload ;;
    relationship: one_to_one
  }
}

explore: champ__location__1 {
  join: champ__LOCATION__1__headers {
    view_label: "Champ Location 1: Headers"
    sql: LEFT JOIN UNNEST([${champ__LOCATION__1.headers}]) as champ__LOCATION__1__headers ;;
    relationship: one_to_one
  }

  join: champ__LOCATION__1__payload {
    view_label: "Champ Location 1: Payload"
    sql: LEFT JOIN UNNEST([${champ__LOCATION__1.payload}]) as champ__LOCATION__1__payload ;;
    relationship: one_to_one
  }
}

explore: champ__location_version_history__1 {
  join: champ__LOCATION_VERSION_HISTORY__1__headers {
    view_label: "Champ Location Version History 1: Headers"
    sql: LEFT JOIN UNNEST([${champ__LOCATION_VERSION_HISTORY__1.headers}]) as champ__LOCATION_VERSION_HISTORY__1__headers ;;
    relationship: one_to_one
  }

  join: champ__LOCATION_VERSION_HISTORY__1__payload {
    view_label: "Champ Location Version History 1: Payload"
    sql: LEFT JOIN UNNEST([${champ__LOCATION_VERSION_HISTORY__1.payload}]) as champ__LOCATION_VERSION_HISTORY__1__payload ;;
    relationship: one_to_one
  }
}

explore: champ__meeting__1 {
  join: champ__MEETING__1__headers {
    view_label: "Champ Meeting 1: Headers"
    sql: LEFT JOIN UNNEST([${champ__MEETING__1.headers}]) as champ__MEETING__1__headers ;;
    relationship: one_to_one
  }

  join: champ__MEETING__1__payload {
    view_label: "Champ Meeting 1: Payload"
    sql: LEFT JOIN UNNEST([${champ__MEETING__1.payload}]) as champ__MEETING__1__payload ;;
    relationship: one_to_one
  }
}

explore: champ__meeting_occurrence__1 {
  join: champ__MEETING_OCCURRENCE__1__headers {
    view_label: "Champ Meeting Occurrence 1: Headers"
    sql: LEFT JOIN UNNEST([${champ__MEETING_OCCURRENCE__1.headers}]) as champ__MEETING_OCCURRENCE__1__headers ;;
    relationship: one_to_one
  }

  join: champ__MEETING_OCCURRENCE__1__payload {
    view_label: "Champ Meeting Occurrence 1: Payload"
    sql: LEFT JOIN UNNEST([${champ__MEETING_OCCURRENCE__1.payload}]) as champ__MEETING_OCCURRENCE__1__payload ;;
    relationship: one_to_one
  }
}

explore: champ__meeting_user_map__1 {
  join: champ__MEETING_USER_MAP__1__headers {
    view_label: "Champ Meeting User Map 1: Headers"
    sql: LEFT JOIN UNNEST([${champ__MEETING_USER_MAP__1.headers}]) as champ__MEETING_USER_MAP__1__headers ;;
    relationship: one_to_one
  }

  join: champ__MEETING_USER_MAP__1__payload {
    view_label: "Champ Meeting User Map 1: Payload"
    sql: LEFT JOIN UNNEST([${champ__MEETING_USER_MAP__1.payload}]) as champ__MEETING_USER_MAP__1__payload ;;
    relationship: one_to_one
  }
}

explore: champ__member_contact_preference__1 {
  join: champ__MEMBER_CONTACT_PREFERENCE__1__headers {
    view_label: "Champ Member Contact Preference 1: Headers"
    sql: LEFT JOIN UNNEST([${champ__MEMBER_CONTACT_PREFERENCE__1.headers}]) as champ__MEMBER_CONTACT_PREFERENCE__1__headers ;;
    relationship: one_to_one
  }

  join: champ__MEMBER_CONTACT_PREFERENCE__1__payload {
    view_label: "Champ Member Contact Preference 1: Payload"
    sql: LEFT JOIN UNNEST([${champ__MEMBER_CONTACT_PREFERENCE__1.payload}]) as champ__MEMBER_CONTACT_PREFERENCE__1__payload ;;
    relationship: one_to_one
  }
}

explore: champ__member_milestone__1 {
  join: champ__MEMBER_MILESTONE__1__headers {
    view_label: "Champ Member Milestone 1: Headers"
    sql: LEFT JOIN UNNEST([${champ__MEMBER_MILESTONE__1.headers}]) as champ__MEMBER_MILESTONE__1__headers ;;
    relationship: one_to_one
  }

  join: champ__MEMBER_MILESTONE__1__payload {
    view_label: "Champ Member Milestone 1: Payload"
    sql: LEFT JOIN UNNEST([${champ__MEMBER_MILESTONE__1.payload}]) as champ__MEMBER_MILESTONE__1__payload ;;
    relationship: one_to_one
  }
}

explore: champ__member_profile__1 {
  join: champ__MEMBER_PROFILE__1__headers {
    view_label: "Champ Member Profile 1: Headers"
    sql: LEFT JOIN UNNEST([${champ__MEMBER_PROFILE__1.headers}]) as champ__MEMBER_PROFILE__1__headers ;;
    relationship: one_to_one
  }

  join: champ__MEMBER_PROFILE__1__payload {
    view_label: "Champ Member Profile 1: Payload"
    sql: LEFT JOIN UNNEST([${champ__MEMBER_PROFILE__1.payload}]) as champ__MEMBER_PROFILE__1__payload ;;
    relationship: one_to_one
  }
}

explore: champ__user_enrollment__1 {
  join: champ__USER_ENROLLMENT__1__headers {
    view_label: "Champ User Enrollment 1: Headers"
    sql: LEFT JOIN UNNEST([${champ__USER_ENROLLMENT__1.headers}]) as champ__USER_ENROLLMENT__1__headers ;;
    relationship: one_to_one
  }

  join: champ__USER_ENROLLMENT__1__payload {
    view_label: "Champ User Enrollment 1: Payload"
    sql: LEFT JOIN UNNEST([${champ__USER_ENROLLMENT__1.payload}]) as champ__USER_ENROLLMENT__1__payload ;;
    relationship: one_to_one
  }
}

explore: connect__1__comment {
  join: connect__1__Comment__partitions {
    view_label: "Connect 1 Comment: Partitions"
    sql: LEFT JOIN UNNEST([${connect__1__Comment.partitions}]) as connect__1__Comment__partitions ;;
    relationship: one_to_one
  }

  join: connect__1__Comment__headers {
    view_label: "Connect 1 Comment: Headers"
    sql: LEFT JOIN UNNEST([${connect__1__Comment.headers}]) as connect__1__Comment__headers ;;
    relationship: one_to_one
  }

  join: connect__1__Comment__payload__comment {
    view_label: "Connect 1 Comment: Payload Comment"
    sql: LEFT JOIN UNNEST([${connect__1__Comment__payload.comment}]) as connect__1__Comment__payload__comment ;;
    relationship: one_to_one
  }

  join: connect__1__Comment__payload__comment__post {
    view_label: "Connect 1 Comment: Payload Comment Post"
    sql: LEFT JOIN UNNEST([${connect__1__Comment__payload__comment.post}]) as connect__1__Comment__payload__comment__post ;;
    relationship: one_to_one
  }

  join: connect__1__Comment__payload__comment__post__user {
    view_label: "Connect 1 Comment: Payload Comment Post User"
    sql: LEFT JOIN UNNEST([${connect__1__Comment__payload__comment__post.user}]) as connect__1__Comment__payload__comment__post__user ;;
    relationship: one_to_one
  }

  join: connect__1__Comment__payload__comment__user {
    view_label: "Connect 1 Comment: Payload Comment User"
    sql: LEFT JOIN UNNEST([${connect__1__Comment__payload__comment.user}]) as connect__1__Comment__payload__comment__user ;;
    relationship: one_to_one
  }

  join: connect__1__Comment__payload {
    view_label: "Connect 1 Comment: Payload"
    sql: LEFT JOIN UNNEST([${connect__1__Comment.payload}]) as connect__1__Comment__payload ;;
    relationship: one_to_one
  }
}

explore: connect__1__like {
  join: connect__1__Like__partitions {
    view_label: "Connect 1 Like: Partitions"
    sql: LEFT JOIN UNNEST([${connect__1__Like.partitions}]) as connect__1__Like__partitions ;;
    relationship: one_to_one
  }

  join: connect__1__Like__headers {
    view_label: "Connect 1 Like: Headers"
    sql: LEFT JOIN UNNEST([${connect__1__Like.headers}]) as connect__1__Like__headers ;;
    relationship: one_to_one
  }

  join: connect__1__Like__payload__like__likeable {
    view_label: "Connect 1 Like: Payload Like Likeable"
    sql: LEFT JOIN UNNEST([${connect__1__Like__payload__like.likeable}]) as connect__1__Like__payload__like__likeable ;;
    relationship: one_to_one
  }

  join: connect__1__Like__payload__like__likeable__user {
    view_label: "Connect 1 Like: Payload Like Likeable User"
    sql: LEFT JOIN UNNEST([${connect__1__Like__payload__like__likeable.user}]) as connect__1__Like__payload__like__likeable__user ;;
    relationship: one_to_one
  }

  join: connect__1__Like__payload__like {
    view_label: "Connect 1 Like: Payload Like"
    sql: LEFT JOIN UNNEST([${connect__1__Like__payload.like}]) as connect__1__Like__payload__like ;;
    relationship: one_to_one
  }

  join: connect__1__Like__payload__like__user {
    view_label: "Connect 1 Like: Payload Like User"
    sql: LEFT JOIN UNNEST([${connect__1__Like__payload__like.user}]) as connect__1__Like__payload__like__user ;;
    relationship: one_to_one
  }

  join: connect__1__Like__payload {
    view_label: "Connect 1 Like: Payload"
    sql: LEFT JOIN UNNEST([${connect__1__Like.payload}]) as connect__1__Like__payload ;;
    relationship: one_to_one
  }
}

explore: connect__1__mention {
  join: connect__1__Mention__partitions {
    view_label: "Connect 1 Mention: Partitions"
    sql: LEFT JOIN UNNEST([${connect__1__Mention.partitions}]) as connect__1__Mention__partitions ;;
    relationship: one_to_one
  }

  join: connect__1__Mention__headers {
    view_label: "Connect 1 Mention: Headers"
    sql: LEFT JOIN UNNEST([${connect__1__Mention.headers}]) as connect__1__Mention__headers ;;
    relationship: one_to_one
  }

  join: connect__1__Mention__payload__mention__mentionable__post {
    view_label: "Connect 1 Mention: Payload Mention Mentionable Post"
    sql: LEFT JOIN UNNEST([${connect__1__Mention__payload__mention__mentionable.post}]) as connect__1__Mention__payload__mention__mentionable__post ;;
    relationship: one_to_one
  }

  join: connect__1__Mention__payload__mention__mentionable__post__user {
    view_label: "Connect 1 Mention: Payload Mention Mentionable Post User"
    sql: LEFT JOIN UNNEST([${connect__1__Mention__payload__mention__mentionable__post.user}]) as connect__1__Mention__payload__mention__mentionable__post__user ;;
    relationship: one_to_one
  }

  join: connect__1__Mention__payload__mention__mentionable {
    view_label: "Connect 1 Mention: Payload Mention Mentionable"
    sql: LEFT JOIN UNNEST([${connect__1__Mention__payload__mention.mentionable}]) as connect__1__Mention__payload__mention__mentionable ;;
    relationship: one_to_one
  }

  join: connect__1__Mention__payload__mention__mentionable__user {
    view_label: "Connect 1 Mention: Payload Mention Mentionable User"
    sql: LEFT JOIN UNNEST([${connect__1__Mention__payload__mention__mentionable.user}]) as connect__1__Mention__payload__mention__mentionable__user ;;
    relationship: one_to_one
  }

  join: connect__1__Mention__payload__mention__user {
    view_label: "Connect 1 Mention: Payload Mention User"
    sql: LEFT JOIN UNNEST([${connect__1__Mention__payload__mention.user}]) as connect__1__Mention__payload__mention__user ;;
    relationship: one_to_one
  }

  join: connect__1__Mention__payload__mention {
    view_label: "Connect 1 Mention: Payload Mention"
    sql: LEFT JOIN UNNEST([${connect__1__Mention__payload.mention}]) as connect__1__Mention__payload__mention ;;
    relationship: one_to_one
  }

  join: connect__1__Mention__payload {
    view_label: "Connect 1 Mention: Payload"
    sql: LEFT JOIN UNNEST([${connect__1__Mention.payload}]) as connect__1__Mention__payload ;;
    relationship: one_to_one
  }
}

explore: connect__1__post {
  join: connect__1__Post__partitions {
    view_label: "Connect 1 Post: Partitions"
    sql: LEFT JOIN UNNEST([${connect__1__Post.partitions}]) as connect__1__Post__partitions ;;
    relationship: one_to_one
  }

  join: connect__1__Post__headers {
    view_label: "Connect 1 Post: Headers"
    sql: LEFT JOIN UNNEST([${connect__1__Post.headers}]) as connect__1__Post__headers ;;
    relationship: one_to_one
  }

  join: connect__1__Post__payload__post {
    view_label: "Connect 1 Post: Payload Post"
    sql: LEFT JOIN UNNEST([${connect__1__Post__payload.post}]) as connect__1__Post__payload__post ;;
    relationship: one_to_one
  }

  join: connect__1__Post__payload__post__user {
    view_label: "Connect 1 Post: Payload Post User"
    sql: LEFT JOIN UNNEST([${connect__1__Post__payload__post.user}]) as connect__1__Post__payload__post__user ;;
    relationship: one_to_one
  }

  join: connect__1__Post__payload {
    view_label: "Connect 1 Post: Payload"
    sql: LEFT JOIN UNNEST([${connect__1__Post.payload}]) as connect__1__Post__payload ;;
    relationship: one_to_one
  }
}

explore: connect__1__relationship {
  join: connect__1__Relationship__partitions {
    view_label: "Connect 1 Relationship: Partitions"
    sql: LEFT JOIN UNNEST([${connect__1__Relationship.partitions}]) as connect__1__Relationship__partitions ;;
    relationship: one_to_one
  }

  join: connect__1__Relationship__headers {
    view_label: "Connect 1 Relationship: Headers"
    sql: LEFT JOIN UNNEST([${connect__1__Relationship.headers}]) as connect__1__Relationship__headers ;;
    relationship: one_to_one
  }

  join: connect__1__Relationship__payload__relationship__follower {
    view_label: "Connect 1 Relationship: Payload Relationship Follower"
    sql: LEFT JOIN UNNEST([${connect__1__Relationship__payload__relationship.follower}]) as connect__1__Relationship__payload__relationship__follower ;;
    relationship: one_to_one
  }

  join: connect__1__Relationship__payload__relationship {
    view_label: "Connect 1 Relationship: Payload Relationship"
    sql: LEFT JOIN UNNEST([${connect__1__Relationship__payload.relationship}]) as connect__1__Relationship__payload__relationship ;;
    relationship: one_to_one
  }

  join: connect__1__Relationship__payload__relationship__followed {
    view_label: "Connect 1 Relationship: Payload Relationship Followed"
    sql: LEFT JOIN UNNEST([${connect__1__Relationship__payload__relationship.followed}]) as connect__1__Relationship__payload__relationship__followed ;;
    relationship: one_to_one
  }

  join: connect__1__Relationship__payload {
    view_label: "Connect 1 Relationship: Payload"
    sql: LEFT JOIN UNNEST([${connect__1__Relationship.payload}]) as connect__1__Relationship__payload ;;
    relationship: one_to_one
  }
}

explore: connect__1__tag {
  join: connect__1__Tag__partitions {
    view_label: "Connect 1 Tag: Partitions"
    sql: LEFT JOIN UNNEST([${connect__1__Tag.partitions}]) as connect__1__Tag__partitions ;;
    relationship: one_to_one
  }

  join: connect__1__Tag__headers {
    view_label: "Connect 1 Tag: Headers"
    sql: LEFT JOIN UNNEST([${connect__1__Tag.headers}]) as connect__1__Tag__headers ;;
    relationship: one_to_one
  }

  join: connect__1__Tag__payload__tag {
    view_label: "Connect 1 Tag: Payload Tag"
    sql: LEFT JOIN UNNEST([${connect__1__Tag__payload.tag}]) as connect__1__Tag__payload__tag ;;
    relationship: one_to_one
  }

  join: connect__1__Tag__payload {
    view_label: "Connect 1 Tag: Payload"
    sql: LEFT JOIN UNNEST([${connect__1__Tag.payload}]) as connect__1__Tag__payload ;;
    relationship: one_to_one
  }
}

explore: connect__1__user {
  join: connect__1__User__partitions {
    view_label: "Connect 1 User: Partitions"
    sql: LEFT JOIN UNNEST([${connect__1__User.partitions}]) as connect__1__User__partitions ;;
    relationship: one_to_one
  }

  join: connect__1__User__headers {
    view_label: "Connect 1 User: Headers"
    sql: LEFT JOIN UNNEST([${connect__1__User.headers}]) as connect__1__User__headers ;;
    relationship: one_to_one
  }

  join: connect__1__User__payload__user {
    view_label: "Connect 1 User: Payload User"
    sql: LEFT JOIN UNNEST([${connect__1__User__payload.user}]) as connect__1__User__payload__user ;;
    relationship: one_to_one
  }

  join: connect__1__User__payload {
    view_label: "Connect 1 User: Payload"
    sql: LEFT JOIN UNNEST([${connect__1__User.payload}]) as connect__1__User__payload ;;
    relationship: one_to_one
  }
}

explore: core_assessment_service__1__assessment_result_event {
  join: core_assessment_service__1__AssessmentResultEvent__partitions {
    view_label: "Core Assessment Service 1 Assessmentresultevent: Partitions"
    sql: LEFT JOIN UNNEST([${core_assessment_service__1__AssessmentResultEvent.partitions}]) as core_assessment_service__1__AssessmentResultEvent__partitions ;;
    relationship: one_to_one
  }

  join: core_assessment_service__1__AssessmentResultEvent__headers {
    view_label: "Core Assessment Service 1 Assessmentresultevent: Headers"
    sql: LEFT JOIN UNNEST([${core_assessment_service__1__AssessmentResultEvent.headers}]) as core_assessment_service__1__AssessmentResultEvent__headers ;;
    relationship: one_to_one
  }

  join: core_assessment_service__1__AssessmentResultEvent__payload__assessment_result {
    view_label: "Core Assessment Service 1 Assessmentresultevent: Payload Assessment Result"
    sql: LEFT JOIN UNNEST([${core_assessment_service__1__AssessmentResultEvent__payload.assessment_result}]) as core_assessment_service__1__AssessmentResultEvent__payload__assessment_result ;;
    relationship: one_to_one
  }

  join: core_assessment_service__1__AssessmentResultEvent__payload__assessment_result__questions {
    view_label: "Core Assessment Service 1 Assessmentresultevent: Payload Assessment Result Questions"
    sql: LEFT JOIN UNNEST(${core_assessment_service__1__AssessmentResultEvent__payload__assessment_result.questions}) as core_assessment_service__1__AssessmentResultEvent__payload__assessment_result__questions ;;
    relationship: one_to_many
  }

  join: core_assessment_service__1__AssessmentResultEvent__payload__assessment_result__questions__parts {
    view_label: "Core Assessment Service 1 Assessmentresultevent: Payload Assessment Result Questions Parts"
    sql: LEFT JOIN UNNEST(${core_assessment_service__1__AssessmentResultEvent__payload__assessment_result__questions.parts}) as core_assessment_service__1__AssessmentResultEvent__payload__assessment_result__questions__parts ;;
    relationship: one_to_many
  }

  join: core_assessment_service__1__AssessmentResultEvent__payload__assessment_result__questions__parts__options {
    view_label: "Core Assessment Service 1 Assessmentresultevent: Payload Assessment Result Questions Parts Options"
    sql: LEFT JOIN UNNEST(${core_assessment_service__1__AssessmentResultEvent__payload__assessment_result__questions__parts.options}) as core_assessment_service__1__AssessmentResultEvent__payload__assessment_result__questions__parts__options ;;
    relationship: one_to_many
  }

  join: core_assessment_service__1__AssessmentResultEvent__payload {
    view_label: "Core Assessment Service 1 Assessmentresultevent: Payload"
    sql: LEFT JOIN UNNEST([${core_assessment_service__1__AssessmentResultEvent.payload}]) as core_assessment_service__1__AssessmentResultEvent__payload ;;
    relationship: one_to_one
  }
}

explore: core_journaling_service__1__journal_event {
  join: core_journaling_service__1__JournalEvent__partitions {
    view_label: "Core Journaling Service 1 Journalevent: Partitions"
    sql: LEFT JOIN UNNEST([${core_journaling_service__1__JournalEvent.partitions}]) as core_journaling_service__1__JournalEvent__partitions ;;
    relationship: one_to_one
  }

  join: core_journaling_service__1__JournalEvent__headers {
    view_label: "Core Journaling Service 1 Journalevent: Headers"
    sql: LEFT JOIN UNNEST([${core_journaling_service__1__JournalEvent.headers}]) as core_journaling_service__1__JournalEvent__headers ;;
    relationship: one_to_one
  }

  join: core_journaling_service__1__JournalEvent__payload {
    view_label: "Core Journaling Service 1 Journalevent: Payload"
    sql: LEFT JOIN UNNEST([${core_journaling_service__1__JournalEvent.payload}]) as core_journaling_service__1__JournalEvent__payload ;;
    relationship: one_to_one
  }
}

explore: core_profile_service__1__profile_event {
  join: core_profile_service__1__ProfileEvent__partitions {
    view_label: "Core Profile Service 1 Profileevent: Partitions"
    sql: LEFT JOIN UNNEST([${core_profile_service__1__ProfileEvent.partitions}]) as core_profile_service__1__ProfileEvent__partitions ;;
    relationship: one_to_one
  }

  join: core_profile_service__1__ProfileEvent__headers {
    view_label: "Core Profile Service 1 Profileevent: Headers"
    sql: LEFT JOIN UNNEST([${core_profile_service__1__ProfileEvent.headers}]) as core_profile_service__1__ProfileEvent__headers ;;
    relationship: one_to_one
  }

  join: core_profile_service__1__ProfileEvent__payload {
    view_label: "Core Profile Service 1 Profileevent: Payload"
    sql: LEFT JOIN UNNEST([${core_profile_service__1__ProfileEvent.payload}]) as core_profile_service__1__ProfileEvent__payload ;;
    relationship: one_to_one
  }

  join: core_profile_service__1__ProfileEvent__payload__account_subscriptions {
    view_label: "Core Profile Service 1 Profileevent: Payload Account Subscriptions"
    sql: LEFT JOIN UNNEST([${core_profile_service__1__ProfileEvent__payload.account_subscriptions}]) as core_profile_service__1__ProfileEvent__payload__account_subscriptions ;;
    relationship: one_to_one
  }

  join: core_profile_service__1__ProfileEvent__payload__account_subscriptions__current_transaction {
    view_label: "Core Profile Service 1 Profileevent: Payload Account Subscriptions Current Transaction"
    sql: LEFT JOIN UNNEST([${core_profile_service__1__ProfileEvent__payload__account_subscriptions.current_transaction}]) as core_profile_service__1__ProfileEvent__payload__account_subscriptions__current_transaction ;;
    relationship: one_to_one
  }

  join: core_profile_service__1__ProfileEvent__payload__account_subscriptions__current_transaction__main_program {
    view_label: "Core Profile Service 1 Profileevent: Payload Account Subscriptions Current Transaction Main Program"
    sql: LEFT JOIN UNNEST([${core_profile_service__1__ProfileEvent__payload__account_subscriptions__current_transaction.main_program}]) as core_profile_service__1__ProfileEvent__payload__account_subscriptions__current_transaction__main_program ;;
    relationship: one_to_one
  }

  join: core_profile_service__1__ProfileEvent__payload__account_subscriptions__current_transaction__main_program__roles_group {
    view_label: "Core Profile Service 1 Profileevent: Payload Account Subscriptions Current Transaction Main Program Roles Group"
    sql: LEFT JOIN UNNEST([${core_profile_service__1__ProfileEvent__payload__account_subscriptions__current_transaction__main_program.roles_group}]) as core_profile_service__1__ProfileEvent__payload__account_subscriptions__current_transaction__main_program__roles_group ;;
    relationship: one_to_one
  }

  join: core_profile_service__1__ProfileEvent__payload__account_subscriptions__current_transaction__new_program {
    view_label: "Core Profile Service 1 Profileevent: Payload Account Subscriptions Current Transaction New Program"
    sql: LEFT JOIN UNNEST([${core_profile_service__1__ProfileEvent__payload__account_subscriptions__current_transaction.new_program}]) as core_profile_service__1__ProfileEvent__payload__account_subscriptions__current_transaction__new_program ;;
    relationship: one_to_one
  }

  join: core_profile_service__1__ProfileEvent__payload__account_subscriptions__current_transaction__new_program__roles_group {
    view_label: "Core Profile Service 1 Profileevent: Payload Account Subscriptions Current Transaction New Program Roles Group"
    sql: LEFT JOIN UNNEST([${core_profile_service__1__ProfileEvent__payload__account_subscriptions__current_transaction__new_program.roles_group}]) as core_profile_service__1__ProfileEvent__payload__account_subscriptions__current_transaction__new_program__roles_group ;;
    relationship: one_to_one
  }

  join: core_profile_service__1__ProfileEvent__payload__account_subscriptions__current_transaction__user_type {
    view_label: "Core Profile Service 1 Profileevent: Payload Account Subscriptions Current Transaction User Type"
    sql: LEFT JOIN UNNEST([${core_profile_service__1__ProfileEvent__payload__account_subscriptions__current_transaction.user_type}]) as core_profile_service__1__ProfileEvent__payload__account_subscriptions__current_transaction__user_type ;;
    relationship: one_to_one
  }

  join: core_profile_service__1__ProfileEvent__payload__contact_info {
    view_label: "Core Profile Service 1 Profileevent: Payload Contact Info"
    sql: LEFT JOIN UNNEST([${core_profile_service__1__ProfileEvent__payload.contact_info}]) as core_profile_service__1__ProfileEvent__payload__contact_info ;;
    relationship: one_to_one
  }

  join: core_profile_service__1__ProfileEvent__payload__email_preferences {
    view_label: "Core Profile Service 1 Profileevent: Payload Email Preferences"
    sql: LEFT JOIN UNNEST([${core_profile_service__1__ProfileEvent__payload.email_preferences}]) as core_profile_service__1__ProfileEvent__payload__email_preferences ;;
    relationship: one_to_one
  }

  join: core_profile_service__1__ProfileEvent__payload__phone {
    view_label: "Core Profile Service 1 Profileevent: Payload Phone"
    sql: LEFT JOIN UNNEST([${core_profile_service__1__ProfileEvent__payload.phone}]) as core_profile_service__1__ProfileEvent__payload__phone ;;
    relationship: one_to_one
  }

  join: core_profile_service__1__ProfileEvent__payload__contact_infol {
    view_label: "Core Profile Service 1 Profileevent: Payload Contact Infol"
    sql: LEFT JOIN UNNEST([${core_profile_service__1__ProfileEvent__payload.contact_infol}]) as core_profile_service__1__ProfileEvent__payload__contact_infol ;;
    relationship: one_to_one
  }

  join: core_profile_service__1__ProfileEvent__payload__account_status__shipping_address {
    view_label: "Core Profile Service 1 Profileevent: Payload Account Status Shipping Address"
    sql: LEFT JOIN UNNEST([${core_profile_service__1__ProfileEvent__payload__account_status.shipping_address}]) as core_profile_service__1__ProfileEvent__payload__account_status__shipping_address ;;
    relationship: one_to_one
  }

  join: core_profile_service__1__ProfileEvent__payload__account_status__billing_address {
    view_label: "Core Profile Service 1 Profileevent: Payload Account Status Billing Address"
    sql: LEFT JOIN UNNEST([${core_profile_service__1__ProfileEvent__payload__account_status.billing_address}]) as core_profile_service__1__ProfileEvent__payload__account_status__billing_address ;;
    relationship: one_to_one
  }

  join: core_profile_service__1__ProfileEvent__payload__account_status__payment_info {
    view_label: "Core Profile Service 1 Profileevent: Payload Account Status Payment Info"
    sql: LEFT JOIN UNNEST([${core_profile_service__1__ProfileEvent__payload__account_status.payment_info}]) as core_profile_service__1__ProfileEvent__payload__account_status__payment_info ;;
    relationship: one_to_one
  }

  join: core_profile_service__1__ProfileEvent__payload__identity {
    view_label: "Core Profile Service 1 Profileevent: Payload Identity"
    sql: LEFT JOIN UNNEST([${core_profile_service__1__ProfileEvent__payload.identity}]) as core_profile_service__1__ProfileEvent__payload__identity ;;
    relationship: one_to_one
  }

  join: core_profile_service__1__ProfileEvent__payload__additional_settings {
    view_label: "Core Profile Service 1 Profileevent: Payload Additional Settings"
    sql: LEFT JOIN UNNEST([${core_profile_service__1__ProfileEvent__payload.additional_settings}]) as core_profile_service__1__ProfileEvent__payload__additional_settings ;;
    relationship: one_to_one
  }

  join: core_profile_service__1__ProfileEvent__payload__email {
    view_label: "Core Profile Service 1 Profileevent: Payload Email"
    sql: LEFT JOIN UNNEST([${core_profile_service__1__ProfileEvent__payload.email}]) as core_profile_service__1__ProfileEvent__payload__email ;;
    relationship: one_to_one
  }

  join: core_profile_service__1__ProfileEvent__payload__address__shipping {
    view_label: "Core Profile Service 1 Profileevent: Payload Address Shipping"
    sql: LEFT JOIN UNNEST([${core_profile_service__1__ProfileEvent__payload__address.shipping}]) as core_profile_service__1__ProfileEvent__payload__address__shipping ;;
    relationship: one_to_one
  }

  join: core_profile_service__1__ProfileEvent__payload__address__home {
    view_label: "Core Profile Service 1 Profileevent: Payload Address Home"
    sql: LEFT JOIN UNNEST([${core_profile_service__1__ProfileEvent__payload__address.home}]) as core_profile_service__1__ProfileEvent__payload__address__home ;;
    relationship: one_to_one
  }

  join: core_profile_service__1__ProfileEvent__payload__account_status {
    view_label: "Core Profile Service 1 Profileevent: Payload Account Status"
    sql: LEFT JOIN UNNEST([${core_profile_service__1__ProfileEvent__payload.account_status}]) as core_profile_service__1__ProfileEvent__payload__account_status ;;
    relationship: one_to_one
  }

  join: core_profile_service__1__ProfileEvent__payload__address {
    view_label: "Core Profile Service 1 Profileevent: Payload Address"
    sql: LEFT JOIN UNNEST([${core_profile_service__1__ProfileEvent__payload.address}]) as core_profile_service__1__ProfileEvent__payload__address ;;
    relationship: one_to_one
  }
}

explore: core_search_service__1__search_analytics {
  join: core_search_service__1__searchAnalytics__payload {
    view_label: "Core Search Service 1 Searchanalytics: Payload"
    sql: LEFT JOIN UNNEST(${core_search_service__1__searchAnalytics.payload}) as core_search_service__1__searchAnalytics__payload ;;
    relationship: one_to_many
  }
}

explore: core_search_service__1__search_analytics_r001 {
  join: core_search_service__1__searchAnalytics_r001__partitions {
    view_label: "Core Search Service 1 Searchanalytics R001: Partitions"
    sql: LEFT JOIN UNNEST([${core_search_service__1__searchAnalytics_r001.partitions}]) as core_search_service__1__searchAnalytics_r001__partitions ;;
    relationship: one_to_one
  }

  join: core_search_service__1__searchAnalytics_r001__headers {
    view_label: "Core Search Service 1 Searchanalytics R001: Headers"
    sql: LEFT JOIN UNNEST([${core_search_service__1__searchAnalytics_r001.headers}]) as core_search_service__1__searchAnalytics_r001__headers ;;
    relationship: one_to_one
  }

  join: core_search_service__1__searchAnalytics_r001__payload__user {
    view_label: "Core Search Service 1 Searchanalytics R001: Payload User"
    sql: LEFT JOIN UNNEST([${core_search_service__1__searchAnalytics_r001__payload.user}]) as core_search_service__1__searchAnalytics_r001__payload__user ;;
    relationship: one_to_one
  }

  join: core_search_service__1__searchAnalytics_r001__payload {
    view_label: "Core Search Service 1 Searchanalytics R001: Payload"
    sql: LEFT JOIN UNNEST([${core_search_service__1__searchAnalytics_r001.payload}]) as core_search_service__1__searchAnalytics_r001__payload ;;
    relationship: one_to_one
  }
}

explore: dotcom__1__email_distribution {
  join: dotcom__1__EMAIL_DISTRIBUTION__partitions {
    view_label: "Dotcom 1 Email Distribution: Partitions"
    sql: LEFT JOIN UNNEST([${dotcom__1__EMAIL_DISTRIBUTION.partitions}]) as dotcom__1__EMAIL_DISTRIBUTION__partitions ;;
    relationship: one_to_one
  }

  join: dotcom__1__EMAIL_DISTRIBUTION__headers {
    view_label: "Dotcom 1 Email Distribution: Headers"
    sql: LEFT JOIN UNNEST([${dotcom__1__EMAIL_DISTRIBUTION.headers}]) as dotcom__1__EMAIL_DISTRIBUTION__headers ;;
    relationship: one_to_one
  }

  join: dotcom__1__EMAIL_DISTRIBUTION__payload {
    view_label: "Dotcom 1 Email Distribution: Payload"
    sql: LEFT JOIN UNNEST([${dotcom__1__EMAIL_DISTRIBUTION.payload}]) as dotcom__1__EMAIL_DISTRIBUTION__payload ;;
    relationship: one_to_one
  }
}

explore: dotcom__1__franchisee {
  join: dotcom__1__FRANCHISEE__partitions {
    view_label: "Dotcom 1 Franchisee: Partitions"
    sql: LEFT JOIN UNNEST([${dotcom__1__FRANCHISEE.partitions}]) as dotcom__1__FRANCHISEE__partitions ;;
    relationship: one_to_one
  }

  join: dotcom__1__FRANCHISEE__headers {
    view_label: "Dotcom 1 Franchisee: Headers"
    sql: LEFT JOIN UNNEST([${dotcom__1__FRANCHISEE.headers}]) as dotcom__1__FRANCHISEE__headers ;;
    relationship: one_to_one
  }

  join: dotcom__1__FRANCHISEE__payload {
    view_label: "Dotcom 1 Franchisee: Payload"
    sql: LEFT JOIN UNNEST([${dotcom__1__FRANCHISEE.payload}]) as dotcom__1__FRANCHISEE__payload ;;
    relationship: one_to_one
  }
}

explore: dotcom__1__member_affiliate_tracking {
  join: dotcom__1__MEMBER_AFFILIATE_TRACKING__partitions {
    view_label: "Dotcom 1 Member Affiliate Tracking: Partitions"
    sql: LEFT JOIN UNNEST([${dotcom__1__MEMBER_AFFILIATE_TRACKING.partitions}]) as dotcom__1__MEMBER_AFFILIATE_TRACKING__partitions ;;
    relationship: one_to_one
  }

  join: dotcom__1__MEMBER_AFFILIATE_TRACKING__headers {
    view_label: "Dotcom 1 Member Affiliate Tracking: Headers"
    sql: LEFT JOIN UNNEST([${dotcom__1__MEMBER_AFFILIATE_TRACKING.headers}]) as dotcom__1__MEMBER_AFFILIATE_TRACKING__headers ;;
    relationship: one_to_one
  }

  join: dotcom__1__MEMBER_AFFILIATE_TRACKING__payload {
    view_label: "Dotcom 1 Member Affiliate Tracking: Payload"
    sql: LEFT JOIN UNNEST([${dotcom__1__MEMBER_AFFILIATE_TRACKING.payload}]) as dotcom__1__MEMBER_AFFILIATE_TRACKING__payload ;;
    relationship: one_to_one
  }
}

explore: dotcom__1__member_program {
  join: dotcom__1__MEMBER_PROGRAM__partitions {
    view_label: "Dotcom 1 Member Program: Partitions"
    sql: LEFT JOIN UNNEST([${dotcom__1__MEMBER_PROGRAM.partitions}]) as dotcom__1__MEMBER_PROGRAM__partitions ;;
    relationship: one_to_one
  }

  join: dotcom__1__MEMBER_PROGRAM__headers {
    view_label: "Dotcom 1 Member Program: Headers"
    sql: LEFT JOIN UNNEST([${dotcom__1__MEMBER_PROGRAM.headers}]) as dotcom__1__MEMBER_PROGRAM__headers ;;
    relationship: one_to_one
  }

  join: dotcom__1__MEMBER_PROGRAM__payload {
    view_label: "Dotcom 1 Member Program: Payload"
    sql: LEFT JOIN UNNEST([${dotcom__1__MEMBER_PROGRAM.payload}]) as dotcom__1__MEMBER_PROGRAM__payload ;;
    relationship: one_to_one
  }
}

explore: dotcom__1__member_uuid_map {
  join: dotcom__1__MEMBER_UUID_MAP__partitions {
    view_label: "Dotcom 1 Member Uuid Map: Partitions"
    sql: LEFT JOIN UNNEST([${dotcom__1__MEMBER_UUID_MAP.partitions}]) as dotcom__1__MEMBER_UUID_MAP__partitions ;;
    relationship: one_to_one
  }

  join: dotcom__1__MEMBER_UUID_MAP__headers {
    view_label: "Dotcom 1 Member Uuid Map: Headers"
    sql: LEFT JOIN UNNEST([${dotcom__1__MEMBER_UUID_MAP.headers}]) as dotcom__1__MEMBER_UUID_MAP__headers ;;
    relationship: one_to_one
  }

  join: dotcom__1__MEMBER_UUID_MAP__payload {
    view_label: "Dotcom 1 Member Uuid Map: Payload"
    sql: LEFT JOIN UNNEST([${dotcom__1__MEMBER_UUID_MAP.payload}]) as dotcom__1__MEMBER_UUID_MAP__payload ;;
    relationship: one_to_one
  }
}

explore: dotcom__member_enrollment__1 {
  join: dotcom__MEMBER_ENROLLMENT__1__headers {
    view_label: "Dotcom Member Enrollment 1: Headers"
    sql: LEFT JOIN UNNEST([${dotcom__MEMBER_ENROLLMENT__1.headers}]) as dotcom__MEMBER_ENROLLMENT__1__headers ;;
    relationship: one_to_one
  }

  join: dotcom__MEMBER_ENROLLMENT__1__payload {
    view_label: "Dotcom Member Enrollment 1: Payload"
    sql: LEFT JOIN UNNEST([${dotcom__MEMBER_ENROLLMENT__1.payload}]) as dotcom__MEMBER_ENROLLMENT__1__payload ;;
    relationship: one_to_one
  }
}

explore: dotcom__member_uuid_map__1 {
  join: dotcom__MEMBER_UUID_MAP__1__headers {
    view_label: "Dotcom Member Uuid Map 1: Headers"
    sql: LEFT JOIN UNNEST([${dotcom__MEMBER_UUID_MAP__1.headers}]) as dotcom__MEMBER_UUID_MAP__1__headers ;;
    relationship: one_to_one
  }

  join: dotcom__MEMBER_UUID_MAP__1__payload {
    view_label: "Dotcom Member Uuid Map 1: Payload"
    sql: LEFT JOIN UNNEST([${dotcom__MEMBER_UUID_MAP__1.payload}]) as dotcom__MEMBER_UUID_MAP__1__payload ;;
    relationship: one_to_one
  }
}

explore: meeting_finder_upload__1__get_locations {
  join: meeting_finder_upload__1__getLocations__partitions {
    view_label: "Meeting Finder Upload 1 Getlocations: Partitions"
    sql: LEFT JOIN UNNEST([${meeting_finder_upload__1__getLocations.partitions}]) as meeting_finder_upload__1__getLocations__partitions ;;
    relationship: one_to_one
  }

  join: meeting_finder_upload__1__getLocations__headers {
    view_label: "Meeting Finder Upload 1 Getlocations: Headers"
    sql: LEFT JOIN UNNEST([${meeting_finder_upload__1__getLocations.headers}]) as meeting_finder_upload__1__getLocations__headers ;;
    relationship: one_to_one
  }

  join: meeting_finder_upload__1__getLocations__payload {
    view_label: "Meeting Finder Upload 1 Getlocations: Payload"
    sql: LEFT JOIN UNNEST([${meeting_finder_upload__1__getLocations.payload}]) as meeting_finder_upload__1__getLocations__payload ;;
    relationship: one_to_one
  }

  join: meeting_finder_upload__1__getLocations__payload__open_hours {
    view_label: "Meeting Finder Upload 1 Getlocations: Payload Open Hours"
    sql: LEFT JOIN UNNEST(${meeting_finder_upload__1__getLocations__payload.open_hours}) as meeting_finder_upload__1__getLocations__payload__open_hours ;;
    relationship: one_to_many
  }

  join: meeting_finder_upload__1__getLocations__payload__open_hours__meeting_day {
    view_label: "Meeting Finder Upload 1 Getlocations: Payload Open Hours Meeting Day"
    sql: LEFT JOIN UNNEST([${meeting_finder_upload__1__getLocations__payload__open_hours.meeting_day}]) as meeting_finder_upload__1__getLocations__payload__open_hours__meeting_day ;;
    relationship: one_to_one
  }

  join: meeting_finder_upload__1__getLocations__payload__address {
    view_label: "Meeting Finder Upload 1 Getlocations: Payload Address"
    sql: LEFT JOIN UNNEST([${meeting_finder_upload__1__getLocations__payload.address}]) as meeting_finder_upload__1__getLocations__payload__address ;;
    relationship: one_to_one
  }

  join: meeting_finder_upload__1__getLocations__payload__address___geoloc {
    view_label: "Meeting Finder Upload 1 Getlocations: Payload Address Geoloc"
    sql: LEFT JOIN UNNEST([${meeting_finder_upload__1__getLocations__payload__address._geoloc}]) as meeting_finder_upload__1__getLocations__payload__address___geoloc ;;
    relationship: one_to_one
  }

  join: meeting_finder_upload__1__getLocations__payload__meetings {
    view_label: "Meeting Finder Upload 1 Getlocations: Payload Meetings"
    sql: LEFT JOIN UNNEST(${meeting_finder_upload__1__getLocations__payload.meetings}) as meeting_finder_upload__1__getLocations__payload__meetings ;;
    relationship: one_to_many
  }

  join: meeting_finder_upload__1__getLocations__payload__meetings__meeting_leader {
    view_label: "Meeting Finder Upload 1 Getlocations: Payload Meetings Meeting Leader"
    sql: LEFT JOIN UNNEST([${meeting_finder_upload__1__getLocations__payload__meetings.meeting_leader}]) as meeting_finder_upload__1__getLocations__payload__meetings__meeting_leader ;;
    relationship: one_to_one
  }

  join: meeting_finder_upload__1__getLocations__payload__meetings__meeting_leader__profile_items {
    view_label: "Meeting Finder Upload 1 Getlocations: Payload Meetings Meeting Leader Profile Items"
    sql: LEFT JOIN UNNEST(${meeting_finder_upload__1__getLocations__payload__meetings__meeting_leader.profile_items}) as meeting_finder_upload__1__getLocations__payload__meetings__meeting_leader__profile_items ;;
    relationship: one_to_many
  }

  join: meeting_finder_upload__1__getLocations__payload__meetings__meeting_day {
    view_label: "Meeting Finder Upload 1 Getlocations: Payload Meetings Meeting Day"
    sql: LEFT JOIN UNNEST([${meeting_finder_upload__1__getLocations__payload__meetings.meeting_day}]) as meeting_finder_upload__1__getLocations__payload__meetings__meeting_day ;;
    relationship: one_to_one
  }

  join: meeting_finder_upload__1__getLocations__payload__meetings__meeting_type {
    view_label: "Meeting Finder Upload 1 Getlocations: Payload Meetings Meeting Type"
    sql: LEFT JOIN UNNEST([${meeting_finder_upload__1__getLocations__payload__meetings.meeting_type}]) as meeting_finder_upload__1__getLocations__payload__meetings__meeting_type ;;
    relationship: one_to_one
  }

  join: meeting_finder_upload__1__getLocations__payload__price_zone {
    view_label: "Meeting Finder Upload 1 Getlocations: Payload Price Zone"
    sql: LEFT JOIN UNNEST([${meeting_finder_upload__1__getLocations__payload.price_zone}]) as meeting_finder_upload__1__getLocations__payload__price_zone ;;
    relationship: one_to_one
  }
}
