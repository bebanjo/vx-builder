
# init
set -e
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
export LC_ALL=en_US.UTF8
export DEBIAN_FRONTEND=noninteractive
export CI=1
export CI_JOB_ID=1
export CI_JOB_NUMBER=100
export CI_BUILD_ID=12
export CI_BUILD_NUMBER=101
export CI_PROJECT_NAME=vexor/vx-test-repo
export CI_BUILD_SHA=8f53c077072674972e21c82a286acc07fada91f5
export DISPLAY=:99
export CI_BRANCH=test/pull-request
echo \$\ export\ FOO
export FOO
echo \$\ export\ BAR
export BAR
export VX_ROOT=$(pwd)
export PATH=$VX_ROOT/bin:$PATH
mkdir -p $VX_ROOT/bin
mkdir -p ${VX_ROOT}/data/vexor/vx-test-repo
mkdir -p ${VX_ROOT}/code/vexor/vx-test-repo
(echo IyEvYmluL2Jhc2gKCmk9MApmaWxlcz0oKQoKQkxBQ0s9IlwwMzNbMzBtIgpSRUQ9IlwwMzNbMzFtIgpHUkVFTj0iXDAzM1szMm0iCllFTExPVz0iXDAzM1szM20iCkJMVUU9IlwwMzNbMzRtIgpQSU5LPSJcMDMzWzM1bSIKQ1lBTj0iXDAzM1szNm0iCldISVRFPSJcMDMzWzM3bSIKTk9STUFMPSJcMDMzWzA7MzltIgoKSk9CUz0ke0NJX1BBUkFMTEVMX0pPQlM6LTF9CkpPQl9OVU1CRVI9JHtDSV9QQVJBTExFTF9KT0JfTlVNQkVSOi0wfQoKZm9yIGZpbGUgaW4gJChmaW5kIC4vc3BlYyAtbmFtZSAiKl9zcGVjLnJiIiB8IHNvcnQpCmRvCiAgaWYgWyAkKCgkaSAlICRKT0JTKSkgLWVxICRKT0JfTlVNQkVSIF0KICB0aGVuCiAgICBmaWxlcys9IiAkZmlsZSIKICBmaQogICgoaSsrKSkKZG9uZQoKZWNobyAtZSAiJHtHUkVFTn1QYXJhbGxlbCBydW5uaW5nICQoKCR7Sk9CX05VTUJFUn0gKyAxKSkgb2YgJHtKT0JTfSAke05PUk1BTH0iCmVjaG8gImJ1bmRsZSBleGVjIHJzcGVjICRAICR7ZmlsZXNbQF19IgpleGVjIGJ1bmRsZSBleGVjIHJzcGVjICRAICR7ZmlsZXNbQF19Cg== | base64 --decode) > $(pwd)/bin/parallel_rspec
chmod 0750 $(pwd)/bin/parallel_rspec
(echo IyEvYmluL2Jhc2gKCmk9MApmaWxlcz0oKQoKQkxBQ0s9IlwwMzNbMzBtIgpSRUQ9IlwwMzNbMzFtIgpHUkVFTj0iXDAzM1szMm0iCllFTExPVz0iXDAzM1szM20iCkJMVUU9IlwwMzNbMzRtIgpQSU5LPSJcMDMzWzM1bSIKQ1lBTj0iXDAzM1szNm0iCldISVRFPSJcMDMzWzM3bSIKTk9STUFMPSJcMDMzWzA7MzltIgoKSk9CUz0ke0NJX1BBUkFMTEVMX0pPQlM6LTF9CkpPQl9OVU1CRVI9JHtDSV9QQVJBTExFTF9KT0JfTlVNQkVSOi0wfQoKZm9yIGZpbGUgaW4gJChmaW5kIC4vZmVhdHVyZXMgLW5hbWUgIiouZmVhdHVyZSIgfCBzb3J0KQpkbwogIGlmIFsgJCgoJGkgJSAkSk9CUykpIC1lcSAkSk9CX05VTUJFUiBdCiAgdGhlbgogICAgZmlsZXMrPSIgJGZpbGUiCiAgZmkKICAoKGkrKykpCmRvbmUKCmVjaG8gLWUgIiR7R1JFRU59UGFyYWxsZWwgcnVubmluZyAkKCgke0pPQl9OVU1CRVJ9ICsgMSkpIG9mICR7Sk9CU30gJHtOT1JNQUx9IgplY2hvICJidW5kbGUgZXhlYyBzcGluYWNoICRAICR7ZmlsZXNbQF19IgpleGVjIGJ1bmRsZSBleGVjIHNwaW5hY2ggJEAgJHtmaWxlc1tAXX0K | base64 --decode) > $(pwd)/bin/parallel_spinach
chmod 0750 $(pwd)/bin/parallel_spinach
(echo IyEvYmluL2Jhc2gKCnNldCAtZQoKIyBUT0RPOiByZW1vdmUgYWZ0ZXIgaW1hZ2UgdXBkYXRlZAojIFRPRE86IGNyZWF0ZSBkZWZhdWx0IHJ1YnkgYW5kIGJ1bmRsZSBsaW5rcyBpbiBkb2NrZXIgaW1hZ2UKZGVmYXVsdF9idW5kbGU9Ii9vcHQvdmV4b3IvcGFja2FnZXMvcnVieS0yLjAuMC1wNDgxL2Jpbi9idW5kbGUiCgpydWJ5X3ZlcnNpb24gKCkgewogIGxvY2FsIHZlcgogIGxvY2FsIHN0CiAgdmVyPSIkKCRkZWZhdWx0X2J1bmRsZSBwbGF0Zm9ybSAtLXJ1YnkpIgogIHN0PSQ/CgogIGlmIFtbICR2ZXIgPX4gXnJ1YnlcIFswLTldIF1dIDsgdGhlbgogICAgZWNobyAkdmVyIHwgc2VkIC1lICdzL3J1YnkgLy8nCiAgZWxzZQogICAgZWNobyAnMi4wLjAnCiAgZmkKCiAgcmV0dXJuICRzdAp9CgpydWJ5X2luc3RhbGwgKCkgewogIGxvY2FsIHJlCiAgbG9jYWwgdmVyCgogIGlmIFtbICJ4JDEiID09ICJ4IiBdXSA7CiAgdGhlbgogICAgdmVyPSQocnVieV92ZXJzaW9uKQogIGVsc2UKICAgIHZlcj0kMQogIGZpCgogIGVjaG8gIiQgc3VkbyBlbnYgUEFUSD1cJFBBVEggdnh2bSBpbnN0YWxsIHJ1YnkgJHZlciIKICByZT0kKHN1ZG8gZW52IFBBVEg9JFBBVEggdnh2bSBpbnN0YWxsIHJ1YnkgJHZlcikKICBlY2hvICRyZSA+IC5ydWJ5LWFjdGl2YXRlCiAgc291cmNlICRyZQp9CgpydWJ5X2dlbl9kYXRhYmFzZV9zcGVjX2Zvcl9tb25nb2lkICgpIHsKICBidW5kbGUgc2hvdyBtb25nb2lkID4gL2Rldi9udWxsICYmICgKICAgIGVjaG8gJ2NyZWF0ZSBjb25maWcvbW9uZ29pZC55bWwnCiAgICBjYXQgPiBjb25maWcvbW9uZ29pZC55bWwgPDxFT0wKdGVzdDoKICBzZXNzaW9uczoKICAgIGRlZmF1bHQ6CiAgICAgIGRhdGFiYXNlOiBtb25nb2lkCiAgICAgIGhvc3RzOgogICAgICAgIC0gbG9jYWxob3N0OjI3MDE3CkVPTAogICAgbG4gLXMgJChwd2QpL2NvbmZpZy9tb25nb2lkLnltbCAkKHB3ZCkvbW9uZ29pZC55bWwKICAgIGVjaG8gIiQgc3VkbyBzZXJ2aWNlIG1vbmdvZGIgc3RhcnQiCiAgICBzdWRvIHNlcnZpY2UgbW9uZ29kYiBzdGFydAogICkKfQoKcnVieV9yYWlsc19nZW5fZGF0YWJhc2Vfc3BlY19mb3JfcGcgKCkgewogIGJ1bmRsZSBzaG93IHBnID4gL2Rldi9udWxsICYmICgKICAgIGVjaG8gJ2NyZWF0ZSBjb25maWcvZGF0YWJhc2UueW1sIGZvciBwb3N0Z3Jlc3FsJwogICAgY2F0ID4gY29uZmlnL2RhdGFiYXNlLnltbCA8PEVPTAp0ZXN0OgogIGFkYXB0ZXI6IHBvc3RncmVzcWwKICBlbmNvZGluZzogdW5pY29kZQogIGRhdGFiYXNlOiByYWlsc190ZXN0CiAgdXNlcm5hbWU6IHBvc3RncmVzCiAgaG9zdDogbG9jYWxob3N0CkVPTAogICkKfQoKcnVieV9yYWlsc19nZW5fZGF0YWJhc2Vfc3BlY19mb3JfbXlzcWwgKCkgewogIGJ1bmRsZSBzaG93IG15c3FsMiA+IC9kZXYvbnVsbCAmJiAoCiAgICBlY2hvICdjcmVhdGUgY29uZmlnL2RhdGFiYXNlLnltbCBmb3IgbXlzcWwnCiAgICBjYXQgPiBjb25maWcvZGF0YWJhc2UueW1sIDw8RU9MCnRlc3Q6CiAgIGFkYXB0ZXI6IG15c3FsMgogICBlbmNvZGluZzogdXRmOAogICBkYXRhYmFzZTogcmFpbHNfdGVzdAogICB1c2VybmFtZTogcm9vdAogICBob3N0OiBsb2NhbGhvc3QKRU9MCiAgKQp9CgpydWJ5X3JhaWxzX2dlbl9kYXRhYmFzZV9zcGVjX2Zvcl9zcWxpdGUgKCkgewogIGJ1bmRsZSBzaG93IHNxbGl0ZTMgPiAvZGV2L251bGwgJiYgKAogICAgZWNobyAnY3JlYXRlIGNvbmZpZy9kYXRhYmFzZS55bWwgZm9yIHNxbGl0ZTMnCiAgICBjYXQgPiBjb25maWcvZGF0YWJhc2UueW1sIDw8RU9MCnRlc3Q6CiAgYWRhcHRlcjogc3FsaXRlMwogIGRhdGFiYXNlOiBkYi90ZXN0LnNxbGl0ZTMKRU9MCiAgKQp9CgpydWJ5X3JhaWxzX2dlbl9zZWNyZXRzICgpIHsKICBlY2hvICdjcmVhdGUgY29uZmlnL3NlY3JldHMueW1sJwogIGNhdCA+IGNvbmZpZy9zZWNyZXRzLnltbCA8PEVPTAp0ZXN0OgogIHNlY3JldF9rZXlfYmFzZTogInNlY3JldCIKRU9MCiAgdHJ1ZQp9CgpydWJ5X3JhaWxzX2RiX2NyZWF0ZSAoKSB7CiAgZWNobyAkIGJ1bmRsZSBleGVjIHJha2UgZGI6Y3JlYXRlCiAgYnVuZGxlIGV4ZWMgcmFrZSBkYjpjcmVhdGUKCiAgdGVzdCAtZiBkYi9zY2hlbWEucmIgJiYgKAogICAgZWNobyAkIGJ1bmRsZSBleGVjIHJha2UgZGI6c2NoZW1hOmxvYWQKICAgIGJ1bmRsZSBleGVjIHJha2UgZGI6c2NoZW1hOmxvYWQKICApCgogIHRlc3QgLWQgZGIvbWlncmF0ZSAmJiAoCiAgICBlY2hvICQgYnVuZGxlIGV4ZWMgcmFrZSBkYjptaWdyYXRlCiAgICBidW5kbGUgZXhlYyByYWtlIGRiOm1pZ3JhdGUKICApCgogIHRydWUKfQoKcnVieV9yYWlsc19zZXR1cCAoKSB7CiAgbG9jYWwgcmUKICByZT0kKGJ1bmRsZSBzaG93IHJhaWxzID4gL2Rldi9udWxsICYmIGVjaG8gIlllcyIgfHwgZWNobyAiTm8iKQogIGlmIFtbICJ4JHJlIiA9PSAneFllcycgXV0gOyB0aGVuCiAgICAoCiAgICAgIHJ1YnlfcmFpbHNfZ2VuX2RhdGFiYXNlX3NwZWNfZm9yX3BnIHx8CiAgICAgIHJ1YnlfcmFpbHNfZ2VuX2RhdGFiYXNlX3NwZWNfZm9yX215c3FsIHx8CiAgICAgIHJ1YnlfcmFpbHNfZ2VuX2RhdGFiYXNlX3NwZWNfZm9yX3NxbGl0ZQogICAgKSAmJgogICAgcnVieV9yYWlsc19nZW5fc2VjcmV0cyAmJgogICAgcnVieV9yYWlsc19kYl9jcmVhdGUKICBmaQp9CgpweXRob25fZGphbmdvX3NldHRpbmdzICgpIHsKICBsb2NhbCBhcHBfbmFtZT0kKGJhc2VuYW1lICQocHdkKSkKCiAgaWYgWyAhIC1mIHNldHRpbmdzLnB5IF0gOyB0aGVuCiAgICBpZiBbIC1kICRhcHBfbmFtZS9zZXR0aW5ncyBdICYmCiAgICAgICBbIC1mICRhcHBfbmFtZS9zZXR0aW5ncy9kZXYucHkgXSAmJgogICAgICAgWyAhIC1mICRhcHBfbmFtZS9zZXR0aW5ncy9fX2luaXRfXy5weSBdOyB0aGVuCiAgICAgIGVjaG8gIiQgbG4gLXMgJGFwcF9uYW1lL3NldHRpbmdzL2Rldi5weSAkYXBwX25hbWUvc2V0dGluZ3MvX19pbml0X18ucHkiCiAgICAgIGxuIC1zICQocHdkKS8kYXBwX25hbWUvc2V0dGluZ3MvZGV2LnB5ICQocHdkKS8kYXBwX25hbWUvc2V0dGluZ3MvX19pbml0X18ucHkKICAgIGZpCiAgZmkKCiAgdHJ1ZQp9CgpjYXNlICIkMSIgaW4KICAicnVieTppbnN0YWxsIikKICAgIHJ1YnlfaW5zdGFsbCAkMgogICAgOzsKICAicnVieTpyYWlsczppbnN0YWxsIikKICAgIHJ1YnlfZ2VuX2RhdGFiYXNlX3NwZWNfZm9yX21vbmdvaWQgfHwgdHJ1ZQogICAgcnVieV9yYWlsc19zZXR1cAogICAgOzsKICAicHl0aG9uOmRqYW5nbzpzZXR0aW5ncyIpCiAgICBweXRob25fZGphbmdvX3NldHRpbmdzCiAgICA7OwogICopCiAgICBlY2hvICJVbmtub3duIGNvbW1hbmQgJEAiCiAgICBleGl0IDEKICAgIDs7CmVzYWMK | base64 --decode) > $(pwd)/bin/vx_builder
chmod 0750 $(pwd)/bin/vx_builder
(echo LS0tLS1CRUdJTiBSU0EgUFJJVkFURSBLRVktLS0tLQpNSUlFcEFJQkFBS0NBUUVBcE1rYW0rbWh3Q2RDUWRxdHU3VTlwNVZSRm1rcmJpOUhhQTN2YWdwaE12eXJ5V3F4CkM5c1krYW44akNOUlVwZWx5ako4ZjZiNi9WNWg0V2NubHdwT3ZWR0duczRIT2JuWWo4OUdLb0JGK1FwVDI4bXAKQ01pMGt6SE5TV01SWmcvZDl4M0FmMmNESWdKaGdHS2RLTGhPYitTSjJpUnpLQTZ5d215TlRyVUI0dEpocGdKLwpQQTFsR2xZWGtHYWQyS1JBZmc3bVRjdVFycUxKNHFpMlhkZ0FIY3RJU045d1VkYkUxeDVIRlB5enVrd0t1QkFFCmg3bTZWVnJKenNrS05yQnN1T1ZTWnVRNnJ2OVRpcVdYVnBBWGdyV3ZLenRsZjNTTkF0dG1BQmI1ZDJ1UE9hMisKcmVDV0V6SGJXT0ZnTVFEUXNYc1MzcnFDM2Z6dzRWTUtSUXdYSVFJREFRQUJBb0lCQURnWk9wVFBrY0JmM1IrYwpPYjhJY1lmbXZtYzV3STVQVENqeGJZc1ZJNGYvR3VDRUVPZnZXKzVLMzI0NTY4cUpVK2lsRFZ0TDFuQ0JQQ05IClFlUWFuem0yVW5VbndLLzNRL0daWjlLNlBwZ00yd1djL28yOS9qT0tKZEFSQ1BCTkFJekxOU2hxUWxmR3BialcKV1podVBrMjdhTzY1ci9aNElvVXIvV05KSGU1QWt2NUZNZnNlQVoremxBSEEzMlFxTmdnT2VpdDY1R2lvMmNJdQpZREtJNU5yMWlpU3EzSk1mRVp2bWMvNVFlZFU5VTdESWVOV3dqaThwR3pGa0Y4eGh1NkV5OWhwR1IyVTdnRXFSCitkeVNud2k4K3Fhc3BvZjhyZ3VHZVNVWlZtb1RHbWZZVUVuejFacEpWYVFpQUJrYVZYd0FEYWhodmU4dGQxVHIKN2gxYitRMENnWUVBMXZEcDdPa2xXeXZGaWVQWXU0cmxubWpWS052NmtiVVVMdE9peDl5S1diQXBZNmxqcFloUwp5aWdpcVY2amlWb3JDMUNsY1hQV3BXc0hvc2QrcDZEUmFhME1pcUQyV0pQU1huZENvbUdSc09yQ2VPN0RyTFdsClVDUkhsMU9sY1JIY3V4U3FWREgrQ0NxVytOQzRKeFVLYzIyT3pJK2thS1RydWozczlYa2VmSU1DZ1lFQXhFTjYKQjd4QU5ZOWNlYjFYb2V2M1o3QVdJaExQUThHUFozS1NTbXoxWmRwMTFNTm91eFJKQnpEUzRrNjRRdjJuNDRKUApVK2tiWFNqdm5DeUlUQ2pUZXZESXNLeEh0TzB3T0xFd0I1TENCenBKVEVzandHWmNUUDBBT3Y2ZHF3SndMUHBtCnlzaVRyTEZCSDVTZFZzVE10OFVKRnhaMzNzRFdIWnZTbzBwMjFJc0NnWUI2ODhyTWs3Mmp2cEU4UkpMcERSWTIKbkg4NjVVTWJjSHNBSWw0ZWQrRElWMFlGMVpMRDBReVN5WXl5V0FteWUxcmVHUjdhbkVudnpCN05GZE0wcm9DOApNNXBWL3FlTW1kcWY0UmJEN280NXBzRGlEcXJ1TStaQnhzOFJHRzh1RStxeE5hd05oNTlxS25xOEVDRVhjaWpOClNLR0VFTE1halNTdkg5ZFp3QlFaWXdLQmdRQ2NCaGlJOWJzRjJVWm04WU10RW0zSVhFLzhIbi92R1gxcmU4V1kKclM0WkhxYjEwYkw4cG8rM3k3U2FmSUkzbjNkTWdsZVdHWWJMZExPbnNDOWFmRXBEUGhBTmc2Z3R5VEhBbi92Uwp5WFMrVWpQYkZ4RUE3MThKUlVoZG5mU3g4bXBERjMySVVCUTJBV1FJT3hrcDFhSDVwZ1luK0pDcTRScFd4MzJZCm1xWUZLUUtCZ1FDYkVzdllsZmVXSkRpK0NCSCt6aGZrZldJWTlTaXl1SEVVUWE0aE5iYVMvRGtETWdxTjU4Q3UKOGdYR1NmdEVpVGNMYXQwYTBQNnZlYWNnUEt1aEFIZTFLN2g4NCtSMHJFL2N2MVFUQnBXMzhSUWdhYkxzK2V4eQpqeUY1UjFOSEkvTFhzREJOYWlSMDVzclhkaVNadW1MMGF3WDdyaUM0RHpJazZaWllSZGJuYlE9PQotLS0tLUVORCBSU0EgUFJJVkFURSBLRVktLS0tLQo= | base64 --decode) > ${VX_ROOT}/data/vexor/vx-test-repo/key
chmod 0600 ${VX_ROOT}/data/vexor/vx-test-repo/key
export VX_PRIVATE_KEY=${VX_ROOT}/data/vexor/vx-test-repo/key
(echo IyEvYmluL3NoCmV4ZWMgL3Vzci9iaW4vc3NoIC1BIC1vIExvZ0xldmVsPXF1aWV0IC1vIFN0cmljdEhvc3RLZXlDaGVja2luZz1ubyAtbyBVc2VyS25vd25Ib3N0c0ZpbGU9L2Rldi9udWxsIC1pICR7VlhfUk9PVH0vZGF0YS92ZXhvci92eC10ZXN0LXJlcG8va2V5ICRACg== | base64 --decode) > ${VX_ROOT}/data/vexor/vx-test-repo/git_ssh
chmod 0750 ${VX_ROOT}/data/vexor/vx-test-repo/git_ssh
export GIT_SSH=${VX_ROOT}/data/vexor/vx-test-repo/git_ssh
 echo "$ if [ -d ${VX_ROOT}/code/vexor/vx-test-repo/.git ]; then cd ${VX_ROOT}/code/vexor/vx-test-repo && git clean -q -d -x -f && git fetch -q origin && git fetch --tags -q origin && git reset -q --hard 8f53c077072674972e21c82a286acc07fada91f5; else git clone --depth=50 --branch=test/pull-request git@github.com:vexor/vx-test-repo.git ${VX_ROOT}/code/vexor/vx-test-repo; fi" 
if [ -d ${VX_ROOT}/code/vexor/vx-test-repo/.git ]; then cd ${VX_ROOT}/code/vexor/vx-test-repo && git clean -q -d -x -f && git fetch -q origin && git fetch --tags -q origin && git reset -q --hard 8f53c077072674972e21c82a286acc07fada91f5; else git clone --depth=50 --branch=test/pull-request git@github.com:vexor/vx-test-repo.git ${VX_ROOT}/code/vexor/vx-test-repo; fi
 echo "$ git checkout -qf 8f53c077072674972e21c82a286acc07fada91f5" 
 ( cd ${VX_ROOT}/code/vexor/vx-test-repo && git checkout -qf 8f53c077072674972e21c82a286acc07fada91f5 )  || exit 1
unset GIT_SSH
echo "starting SSH Agent"
eval "$(ssh-agent)" > /dev/null
ssh-add $VX_PRIVATE_KEY 2> /dev/null
cd ${VX_ROOT}/code/vexor/vx-test-repo
echo "download latest version of vxvm"
curl --tcp-nodelay --retry 3 --fail --silent --show-error -o $VX_ROOT/bin/vxvm https://raw.githubusercontent.com/vexor/vx-packages/master/vxvm
chmod +x $VX_ROOT/bin/vxvm
echo \$\ export\ RAILS_ENV\=test
export RAILS_ENV=test
echo \$\ export\ RACK_ENV\=test
export RACK_ENV=test
echo \$\ export\ BUNDLE_GEMFILE\=\$\{PWD\}/Gemfile
export BUNDLE_GEMFILE=${PWD}/Gemfile
echo \$\ export\ GEM_HOME\=\~/.rubygems
export GEM_HOME=~/.rubygems
 export CASHER_DIR=$HOME/.casher && ( mkdir -p $CASHER_DIR/bin && /usr/bin/curl https://raw.githubusercontent.com/pacoguzman/casher/master/bin/casher --tcp-nodelay --retry 3 --fail --silent --show-error -o $HOME/.casher/bin/casher && chmod +x $HOME/.casher/bin/casher ) || true 
test -f $HOME/.casher/bin/casher && /opt/rbenv/versions/1.9.3-p547/bin/ruby $HOME/.casher/bin/casher fetch http://example.com/test/pull-request/rvm-default-gemfile.tgz http://example.com/master/rvm-default-gemfile.tgz || true
test -f $HOME/.casher/bin/casher && /opt/rbenv/versions/1.9.3-p547/bin/ruby $HOME/.casher/bin/casher add ~/.rubygems || true
unset CASHER_DIR

# before install
echo \$\ vx_builder\ ruby:install\ 
vx_builder ruby:install 
source $(cat .ruby-activate)

# announce
echo \$\ ruby\ --version
ruby --version
echo \$\ gem\ --version
gem --version
echo \$\ bundle\ --version
bundle --version

# install
echo \$\ bundle\ install\ --clean\ --retry\=3\ --jobs\=4
bundle install --clean --retry=3 --jobs=4

# before script
echo \$\ vx_builder\ ruby:rails:install
vx_builder ruby:rails:install