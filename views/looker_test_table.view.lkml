view: looker_test_table {
  sql_table_name: `looker_test.looker_test_table` ;;

  dimension_group: date {
    type: time
    timeframes: [date, quarter, year]
    sql: PARSE_DATE("%Y-%m-%d", ${TABLE}.Date) ;;
    #sql: ${TABLE}.Date ;;
  }
  dimension: quarter {
    type: string
    sql: ${TABLE}.Quarter ;;
  }
  dimension: absenteeism_dim {
    hidden: yes
    type: number
    sql: ${TABLE}.Absenteeism ;;
  }
  dimension: detractors_dim {
    hidden: yes
    type: number
    sql: ${TABLE}.Detractors ;;
  }
  dimension: diagnostics_1 {
    type: string
    sql: ${TABLE}.Diagnostics_1 ;;
  }
  dimension: diagnostics_2 {
    type: string
    sql: ${TABLE}.Diagnostics_2 ;;
  }
  dimension: diagnostics_3 {
    type: string
    sql: ${TABLE}.Diagnostics_3 ;;
  }
  dimension: effectiveness_dim {
    hidden: yes
    type: number
    sql: ${TABLE}.Effectiveness ;;
  }
  dimension: engagement_rating_dim {
    hidden: yes
    type: number
    sql: ${TABLE}.Engagement_Rating ;;
  }
  dimension: learning_dim {
    hidden: yes
    type: number
    sql: ${TABLE}.Learning ;;
  }
  dimension: passives_dim {
    hidden: yes
    type: number
    sql: ${TABLE}.Passives ;;
  }
  dimension: productivity_dim {
    hidden: yes
    type: number
    sql: ${TABLE}.Productivity ;;
  }
  dimension: promoters_dim {
    hidden: yes
    type: number
    sql: ${TABLE}.Promoters ;;
  }
  dimension: satisfaction_dim {
    hidden: yes
    type: number
    sql: ${TABLE}.Satisfaction ;;
  }
  measure: absenteeism {
    type: average
    sql: ${absenteeism_dim} ;;
  }
  measure: detractors {
    type: average
    sql: ${detractors_dim} ;;
  }
  measure: effectiveness {
    type: average
    sql: ${effectiveness_dim} ;;
  }
  measure: engagement_rating {
    type: average
    sql: ${engagement_rating_dim} ;;
  }
  measure: learning {
    type: average
    sql: ${learning_dim} ;;
  }
  measure: passives {
    type: average
    sql: ${passives_dim} ;;
  }
  measure: productivity {
    type: average
    sql: ${productivity_dim} ;;
  }
  measure: promoters {
    type: average
    sql: ${promoters_dim} ;;
  }
  measure: satisfaction {
    type: average
    sql: ${satisfaction_dim} ;;
  }
}
