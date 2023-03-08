URL=https://maven.pkg.github.com/asaikali/demo-time/com/example/demo-time/${APP_VERSION}/demo-time-${APP_VERSION}.jar

echo "Downloading ${URL}"
curl ${URL} \
  -H "Authorization: Bearer ${GITHUB_TOKEN}" \
  -L \
  -O

  ls -lah