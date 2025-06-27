from pyspark.sql import SparkSession
from pyspark.sql.functions import avg, col

# Start Spark Session
spark = SparkSession.builder     .appName("Spark Python PySpark Mega Course Example")     .getOrCreate()

# Load CSV data (simulate by creating a DataFrame)
data = [("John", "Sales", 3000),
        ("Jane", "Sales", 4000),
        ("Jake", "IT", 5000),
        ("Jill", "IT", 6000),
        ("Jeff", "HR", 3500)]
columns = ["EmployeeName", "Department", "Salary"]

df = spark.createDataFrame(data, columns)

# Show the initial data
print("Initial Employee Data:")
df.show()

# Perform transformation: Average salary by department
avg_salary_df = df.groupBy("Department").agg(avg("Salary").alias("AverageSalary"))

# Show the transformed data
print("Average Salary by Department:")
avg_salary_df.show()

# Write the result to CSV (simulate storing results)
avg_salary_df.write.mode("overwrite").csv("output/department_avg_salary", header=True)

spark.stop()
