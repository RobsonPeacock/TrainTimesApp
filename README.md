# README

This application utilises the TFL API to display the latest train times relating to a certain station

## Application Setup

```bash
# 1. Clone this repsitory
git clone https://github.com/RobsonPeacock/TrainTimesApp.git && cd TrainTimesApp

# 2. Install RVM
\curl -sSL https://get.rvm.io | bash -s stable

# 3. Install ruby-3.3.0
rvm install ruby-3.3.0

# 4. Go out and back to the repo to refresh gemset
cd .. && TrainTimesApp

# 5. Install bundler
gem install bundler

# 7. Install all necessary gems. This can take a few minutes.
bundle

# 8. Start server
rails s
```

## Run tests

```bash
# Run all tests
rspec

# Run model tests
rspec spec/models/arrival_spec.rb

# Run controller tests
rspec spec/controllers/arrivals_controller_spec.rb
```