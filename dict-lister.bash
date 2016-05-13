#!/bin/bash

dictSource="https://www.morewords.com/ends-with"
domainExt="ist"

curl $dictSource/$domainExt | grep "word/" | grep $domainExt |  awk -F "/" '{print $3}' | sed s/"$domainExt"/".$domainExt"/g
