#!/usr/bin/env bats
source test_helper.sh

@test "addition using bc" {
  result="$(echo 2+2 | bc)"
  [ "$result" -eq 4 ]
}

@test "mocking curl" {
  stub curl "tinisi.com/test.html : echo '<html><body>Ping!</body></html>'"
  result="$(./thing.sh)"
  echo "ssss"
  [ "$result" = "<html><body>Ping!</body></html>" ]
  unstub curl
}

