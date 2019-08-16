FROM        python:3.7-slim
RUN         apt -y update && \
            apt -y dist-upgrade

# pip requirements파일만 먼저 복사, 해당 파일 기반으로 pip install실행
# requirements.txt파일이 변경되기 전까지는 pip install한 결과를 cache해서 사용
COPY        ./requirements.txt /tmp/
RUN         pip install -r /tmp/requirements.txt

# 소스코드 복사
COPY        . /srv/project/

# runserver 실행
CMD         python /srv/project/app/manage.py runserver 0:8011

# 이미지 생성
#  docker build -t compose -f .compose/django/Dockerfile .

# 만든 이미지를 컨테이너로 실행시키면서 Shell실행
#  docker run --rm -it compose /bin/bash

# 만든 이미지를 Host 8000, Container 8011과 연결해서 컨테이너로 실행
#  docker run --rm -it -p 8000:8011 compose
