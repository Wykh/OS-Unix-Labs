NR==1 {
  name=$1
  printf "%s: ", name
}

{
  if (name==$1)
    printf "%s;", $2
  else {
    printf "\n"
    name=$1
    printf "%s: ", name
  }
}

END {
  printf "\n"
}
