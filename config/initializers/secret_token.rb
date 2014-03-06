# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Scheduler::Application.config.secret_key_base = 'e3d01854f7dec84268395f8e4d2aa09e69622546167996e2025c6927b3075e4c91575bf4d5ff6540cb3ffbd86cbe4b232fb37730bf881a54bcaa8bde9ef826e7'
