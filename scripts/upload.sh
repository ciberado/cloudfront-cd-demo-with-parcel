#!/bin/sh

aws s3 cp dist/ s3://cloudfront-cd-demo-with-parcel/v1/ --exclude index.html --cache-control 'max-age=28800' --recursive
aws s3 cp dist/index.html s3://cloudfront-cd-demo-with-parcel/v1/ --cache-control 'max-age=300' 

