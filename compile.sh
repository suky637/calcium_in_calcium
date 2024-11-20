start=$(date +%s.%N)
Calcium main.ca
dur=$(echo "$(date +%s.%N) - $start" | bc)

printf " -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\nCompilation time: %.6f seconds\n -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n" $dur

gcc main.c -o main
rm main.c
./main


