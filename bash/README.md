## read from a file
```bash
while read p; do
  echo $p
done <peptides.txt
```
## read from a variable
```bash
while read -r line; do
    echo "... $line ..."
done <<< "$list"
```
