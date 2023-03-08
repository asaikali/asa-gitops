curl 'https://maven.pkg.github.com/asaikali/demo-time/com/example/demo-time/${APP_VERSION}/demo-time-${APP_VERSION}.jar' \
  -H "Authorization: Bearer ${GITHUB_TOKEN}" \
  -L \
  -O

  ls -lah