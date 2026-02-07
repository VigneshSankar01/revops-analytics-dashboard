# ========== DATABASE ==========
resource "snowflake_database" "sage_revops" {
  name = "SAGE_REVOPS"
}

# ========== SCHEMAS ==========
resource "snowflake_schema" "raw" {
  database = snowflake_database.sage_revops.name
  name     = "RAW"
}

resource "snowflake_schema" "marts" {
  database = snowflake_database.sage_revops.name
  name     = "MARTS"
}

# # ========== WAREHOUSE ==========
# resource "snowflake_warehouse" "compute" {
#   name           = "COMPUTE_WH"
#   warehouse_size = "XSMALL"
#   auto_suspend   = 60
#   auto_resume    = true
# }

# ========== TABLE: fct_sales ==========
resource "snowflake_table" "fct_sales" {
  database = snowflake_database.sage_revops.name
  schema   = snowflake_schema.raw.name
  name     = "FCT_SALES"

  column {
    name     = "SALE_ID"
    type     = "NUMBER(38,0)"
    nullable = false
  }

  column {
    name = "PRODUCT"
    type = "VARCHAR(50)"
  }

  column {
    name = "REGION"
    type = "VARCHAR(20)"
  }

  column {
    name = "AMOUNT"
    type = "NUMBER(12,2)"
  }

  column {
    name = "STAGE"
    type = "VARCHAR(30)"
  }

  column {
    name = "CUSTOMER_NAME"
    type = "VARCHAR(100)"
  }

  column {
    name = "SALE_DATE"
    type = "DATE"
  }

  column {
    name = "STATUS"
    type = "VARCHAR(20)"
  }
}

# ========== TABLE: dim_products ==========
resource "snowflake_table" "dim_products" {
  database = snowflake_database.sage_revops.name
  schema   = snowflake_schema.raw.name
  name     = "DIM_PRODUCTS"

  column {
    name     = "PRODUCT_ID"
    type     = "NUMBER(38,0)"
    nullable = false
  }

  column {
    name = "PRODUCT_NAME"
    type = "VARCHAR(50)"
  }

  column {
    name = "CATEGORY"
    type = "VARCHAR(30)"
  }

  column {
    name = "PRICE_TIER"
    type = "VARCHAR(20)"
  }
}

# ========== TABLE: dim_customers ==========
resource "snowflake_table" "dim_customers" {
  database = snowflake_database.sage_revops.name
  schema   = snowflake_schema.raw.name
  name     = "DIM_CUSTOMERS"

  column {
    name     = "CUSTOMER_ID"
    type     = "NUMBER(38,0)"
    nullable = false
  }

  column {
    name = "CUSTOMER_NAME"
    type = "VARCHAR(100)"
  }

  column {
    name = "INDUSTRY"
    type = "VARCHAR(50)"
  }

  column {
    name = "COMPANY_SIZE"
    type = "VARCHAR(20)"
  }

  column {
    name = "REGION"
    type = "VARCHAR(20)"
  }
}
