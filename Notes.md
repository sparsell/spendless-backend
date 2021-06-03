# MODELS:

[] Goal
    integer - goal_amount
    string - description (optional)

    - Has one total

[] SpendLess_Amount
    integer - spendless_amount
    date_time - date stamp

    - belongs_to a total

[] Total
    integer - total

    - has_many spendless_amounts
    - belongs_to a goal

# User Stories...A user should be able to:
    []  Set a goal to "not spend" an aspirational amount
    []  Add an amount they mindfully did not spend on something or somewhere, although they were tempted or were on auto-pilot
    []  As they add amounts they did not spend, they can see the total "not spent" go up and progress to meet the goal
    []  When they reach the goal, they are rewarded with a message
# What does your app *do*?
        - SpendLess is a way to be more mindful of how you spend your money and gently shows you it's easier to reach a goal than you think when you really focus on it.

# MVP ASAP!

# Stretch
    [] Authentication
    [] More than one goal at a time / toggle between goals and choose which one to 'contribute' to

# Build your models
    [] Migrations
    [] Model classes
    [] Associations

# Test your models and associations in the console
    [] Create some seed data
    [] Adjust migrations as needed