# sh lib str-fun

## desc

some function for handle str for ymc shell lib

## feat

- [x] str_set
- [x] str_length
- [x] str_index_of
- [x] str_last_index_of
- [x] str_replace
- [x] str_split
- [x] str_char_at
- [x] str_charcode_at
- [x] str_unicode_at
- [x] str_from_charcode
- [x] str_from_unicode
- [ ] str_match
- [x] str_slice
- [ ] str_substring
- [ ] str_substr
- [x] str_trim
- [x] str_eq
- [x] str_fill

```sh
cat src/index.sh | grep "function " | sed "s/function */- [x] /g"  | sed "s/() *{//g"
```
## how to use for poduction?

```sh
# get the code

# run the index file
# ./index.sh

# or import to your sh file
# source /path/to/the/index file

# simple usage


```

## how to use for developer?

```sh
# get the code

# run test
./test.sh
#2 get some fail test
#./test.sh | grep "it is false"
```

## author

yemiancheng <ymc.github@gmail.com>

## license

MIT
