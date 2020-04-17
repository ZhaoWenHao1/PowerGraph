file(REMOVE_RECURSE
  "CMakeFiles/hadoop"
  "CMakeFiles/hadoop-complete"
  "../deps/hadoop/src/hadoop-stamp/hadoop-install"
  "../deps/hadoop/src/hadoop-stamp/hadoop-mkdir"
  "../deps/hadoop/src/hadoop-stamp/hadoop-download"
  "../deps/hadoop/src/hadoop-stamp/hadoop-update"
  "../deps/hadoop/src/hadoop-stamp/hadoop-patch"
  "../deps/hadoop/src/hadoop-stamp/hadoop-configure"
  "../deps/hadoop/src/hadoop-stamp/hadoop-build"
  "../deps/hadoop/src/hadoop-stamp/hadoop-test"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/hadoop.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
