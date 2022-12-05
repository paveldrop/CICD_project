#!/bin/bash

TOKEN=5936812653:AAHweJfKK_a7Xr7X73TuvBu16yjWAqJFY24
ID=160290591

# curl -s -X POST $URL -d chat_id=$ID -d text=$TEXT
#

TIME="10"
URL="https://api.telegram.org/bot$TOKEN/sendMessage"
TEXT="Deploy status: $1%0A%0AProject:+$CI_PROJECT_NAME%0AURL:+$CI_PROJECT_URL/pipelines/$CI_PIPELINE_ID/%0ABranch:+$CI_COMMIT_REF_SLUG"

curl -s --max-time $TIME -d "chat_id=$ID&disable_web_page_preview=1&text=$TEXT" $URL > /dev/null
