from pyspark.sql import SparkSession
from pyspark.sql.functions import col

# Initialize Spark session
spark = SparkSession.builder     .appName("PySpark End-to-End Example")     .getOrCreate()

# Sample data
data = [
    ("Alice", 34),
    ("Bob", 45),
    ("Cathy", 29),
    ("David", 41)
]

# Create DataFrame
columns = ["Name", "Age"]
df = spark.createDataFrame(data, columns)

# Show original data
print("Original Data:")
df.show()

# Transformation: Filter and Add Column
transformed_df = df.filter(col("Age") > 30).withColumn("AgeGroup", col("Age") > 40)

# Show transformed data
print("Transformed Data:")
transformed_df.show()

# Write the result to a parquet file (simulate ETL output)
transformed_df.write.mode("overwrite").parquet("output/age_group_data")

spark.stop()
