BEGIN {
D["PACKAGE_NAME"]=" \"avrdude\""
D["PACKAGE_TARNAME"]=" \"avrdude\""
D["PACKAGE_VERSION"]=" \"5.6\""
D["PACKAGE_STRING"]=" \"avrdude 5.6\""
D["PACKAGE_BUGREPORT"]=" \"avrdude-dev@nongnu.org\""
D["PACKAGE_URL"]=" \"\""
D["PACKAGE"]=" \"avrdude\""
D["VERSION"]=" \"5.6\""
D["YYTEXT_POINTER"]=" 1"
D["HAVE_LIBTERMCAP"]=" 1"
D["HAVE_LIBUSB"]=" 1"
D["STDC_HEADERS"]=" 1"
D["HAVE_SYS_TYPES_H"]=" 1"
D["HAVE_SYS_STAT_H"]=" 1"
D["HAVE_STDLIB_H"]=" 1"
D["HAVE_STRING_H"]=" 1"
D["HAVE_MEMORY_H"]=" 1"
D["HAVE_STRINGS_H"]=" 1"
D["HAVE_INTTYPES_H"]=" 1"
D["HAVE_STDINT_H"]=" 1"
D["HAVE_UNISTD_H"]=" 1"
D["HAVE_LIMITS_H"]=" 1"
D["HAVE_STDLIB_H"]=" 1"
D["HAVE_STRING_H"]=" 1"
D["HAVE_FCNTL_H"]=" 1"
D["HAVE_SYS_IOCTL_H"]=" 1"
D["HAVE_SYS_TIME_H"]=" 1"
D["HAVE_TERMIOS_H"]=" 1"
D["HAVE_UNISTD_H"]=" 1"
D["TIME_WITH_SYS_TIME"]=" 1"
D["HAVE_MEMSET"]=" 1"
D["HAVE_SELECT"]=" 1"
D["HAVE_STRCASECMP"]=" 1"
D["HAVE_STRDUP"]=" 1"
D["HAVE_STRERROR"]=" 1"
D["HAVE_STRNCASECMP"]=" 1"
D["HAVE_STRTOL"]=" 1"
D["HAVE_STRTOUL"]=" 1"
D["HAVE_GETTIMEOFDAY"]=" 1"
D["HAVE_PARPORT"]=" 1"
  for (key in D) D_is_set[key] = 1
  FS = ""
}
/^[\t ]*#[\t ]*(define|undef)[\t ]+[_abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ][_abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789]*([\t (]|$)/ {
  line = $ 0
  split(line, arg, " ")
  if (arg[1] == "#") {
    defundef = arg[2]
    mac1 = arg[3]
  } else {
    defundef = substr(arg[1], 2)
    mac1 = arg[2]
  }
  split(mac1, mac2, "(") #)
  macro = mac2[1]
  prefix = substr(line, 1, index(line, defundef) - 1)
  if (D_is_set[macro]) {
    # Preserve the white space surrounding the "#".
    print prefix "define", macro P[macro] D[macro]
    next
  } else {
    # Replace #undef with comments.  This is necessary, for example,
    # in the case of _POSIX_SOURCE, which is predefined and required
    # on some systems where configure will not decide to define it.
    if (defundef == "undef") {
      print "/*", prefix defundef, macro, "*/"
      next
    }
  }
}
{ print }
