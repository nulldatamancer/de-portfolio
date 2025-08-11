import boto3
s3 = boto3.client(
    "s3",
    endpoint_url="http://127.0.0.1:9000",
    aws_access_key_id="minioadmin",
    aws_secret_access_key="minioadmin",
)
s3.put_object(Bucket="de-raw", Key="hello/hello.txt", Body=b"hello from boto3")
print("Uploaded s3://de-raw/hello/hello.txt")
