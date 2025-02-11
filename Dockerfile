FROM python:3.11

# 작업 디렉토리 설정
WORKDIR /app

# 의존성 파일 복사
COPY requirements.txt .

# 파이썬 패키지 설치
RUN pip install --no-cache-dir -r requirements.txt

# 전체 애플리케이션 소스 코드 복사
COPY . .

# Uvicorn을 사용하여 호스트 0.0.0.0, 포트 8000에서 애플리케이션 실행
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]