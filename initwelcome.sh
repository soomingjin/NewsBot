#!/bin/bash

# initwelcome.sh: sets welcome screen
# Execute once only

# Greeting Text
curl -X POST -H "Content-Type: application/json" -d '{
  "setting_type":"greeting",
  "greeting":{
    "text":"Hello {{user_first_name}}, welcome to NewsBot."
  }
}' "https://graph.facebook.com/v2.6/me/thread_settings?access_token=EAAEaTYHPhpEBAPZA8olwdCxhsZAx5ZCJgc88lnXTsEOIP5LEqJtsrhJTix9H9CXVNZCWSuN3GtzSvaTMosfIQmE4VZAjHFkKiAGjrYxyY3AoR14ZBMY2Gz6dLKV1KYBqMfVMGRZCzBqEUOflhkuBUGShg8AKdCiW4HyadTHcv0yswZDZD"

# Get Started button
curl -X POST -H "Content-Type: application/json" -d '{
  "setting_type":"call_to_actions",
  "thread_state":"new_thread",
  "call_to_actions":[
    {
      "payload":"Get Started"
    }
  ]
}' "https://graph.facebook.com/v2.6/me/thread_settings?access_token=EAAEaTYHPhpEBAPZA8olwdCxhsZAx5ZCJgc88lnXTsEOIP5LEqJtsrhJTix9H9CXVNZCWSuN3GtzSvaTMosfIQmE4VZAjHFkKiAGjrYxyY3AoR14ZBMY2Gz6dLKV1KYBqMfVMGRZCzBqEUOflhkuBUGShg8AKdCiW4HyadTHcv0yswZDZD"

# Persistent Menu
curl -X DELETE -H "Content-Type: application/json" -d '{
  "setting_type":"call_to_actions",
  "thread_state":"existing_thread"
}' "https://graph.facebook.com/v2.6/me/thread_settings?access_token=EAAEaTYHPhpEBAPZA8olwdCxhsZAx5ZCJgc88lnXTsEOIP5LEqJtsrhJTix9H9CXVNZCWSuN3GtzSvaTMosfIQmE4VZAjHFkKiAGjrYxyY3AoR14ZBMY2Gz6dLKV1KYBqMfVMGRZCzBqEUOflhkuBUGShg8AKdCiW4HyadTHcv0yswZDZD"   