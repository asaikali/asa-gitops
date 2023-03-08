curl 'https://maven.pkg.github.com/asaikali/demo-time/com/example/demo-time/1.0.0/demo-time-1.0.0.jar' \
  -H "Authorization: Bearer ${{ GITHUB_TOKEN }}" \
  -L \
  -O

  ls -lah