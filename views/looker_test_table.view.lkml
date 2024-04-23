view: looker_test_table {
  sql_table_name: `looker_test.looker_test_table` ;;

  dimension: absenteeism {
    type: number
    sql: ${TABLE}.Absenteeism ;;
  }
  dimension: date {
    type: string
    sql: ${TABLE}.Date ;;
  }
  dimension: detractors {
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
  dimension: effectiveness {
    type: number
    sql: ${TABLE}.Effectiveness ;;
  }
  dimension: engagement_rating {
    type: number
    sql: ${TABLE}.Engagement_Rating ;;
  }
  dimension: learning {
    type: number
    sql: ${TABLE}.Learning ;;
  }
  dimension: passives {
    type: number
    sql: ${TABLE}.Passives ;;
  }
  dimension: productivity {
    type: number
    sql: ${TABLE}.Productivity ;;
  }
  dimension: promoters {
    type: number
    sql: ${TABLE}.Promoters ;;
  }
  dimension: satisfaction {
    type: number
    sql: ${TABLE}.Satisfaction ;;
  }
  measure: count {
    type: count
  }
}
