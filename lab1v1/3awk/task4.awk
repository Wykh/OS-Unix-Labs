BEGIN {
  printf "Using product: %s\n", product
}

$1=="tomato" {
  split(FILENAME,n, "_|/")
  arr[n[3]]=tomato
}

END {
  for (name in arr)
    print name
}
