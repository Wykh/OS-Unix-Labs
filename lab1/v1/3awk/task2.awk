BEGIN {
  printf "Using day: %s\n", day
}

$2==day {
  print $1
}
