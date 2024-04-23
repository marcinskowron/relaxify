connection: "bigquery_test"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: relaxify_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: relaxify_default_datagroup

explore: looker_test_table {}

