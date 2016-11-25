# https://middlemanapp.com/basics/upgrade-v4/#environments-and-changes-to-configure-blocks

# https://github.com/fredjean/middleman-s3_sync
activate :s3_sync do |s3|
  s3.bucket = "staging.getbiblefirst.com"
  s3.aws_access_key_id = ENV["AWS_ACCESS_KEY_ID"]
  s3.aws_secret_access_key = ENV["AWS_SECRET_ACCESS_KEY"]
  s3.prefer_gzip = true
  s3.index_document = "index.html"
  s3.error_document = "404.html"
end
