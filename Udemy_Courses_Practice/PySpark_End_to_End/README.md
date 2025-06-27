# PySpark End-to-End Example Project

This project demonstrates a simple end-to-end pipeline using Apache Spark with Python (PySpark).

## Steps Covered

- Initializing a SparkSession
- Creating a DataFrame from Python data
- Applying transformations (filtering, adding columns)
- Writing the results to Parquet

## How to Run

1. Make sure you have Spark and PySpark installed.

```bash
pip install pyspark
```

2. Run the app:

```bash
python pyspark_example.py
```

3. Output will be saved to the `output/` directory in Parquet format.

## Use Case

A basic data transformation pipeline that can be scaled to large datasets.
