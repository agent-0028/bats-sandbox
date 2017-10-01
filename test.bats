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

@test 'assert()' {
  touch "${TMPDIR}/test.log"
  assert [ -e "$TMPDIR/test.log" ]
  # clean up
  rm "$TMPDIR/test.log"
}

@test 'fail() with pipe - should fail' {
  echo 'this test always fails' | fail
}

@test 'assert_file_exist() - should fail' {
  assert_file_exist /path/to/non-existent-file
}