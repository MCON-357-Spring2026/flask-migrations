#!/usr/bin/env bash
set -euo pipefail

BASE_URL="${BASE_URL:-http://127.0.0.1:5000}"

echo "Creating another student..."
curl -sS -X POST "$BASE_URL/exercises/students" \
  -H "Content-Type: application/json" \
  -d '{"name":"Ava","email":"ava@example.com"}'
echo
echo

echo "Creating another assignment..."
curl -sS -X POST "$BASE_URL/exercises/assignments" \
  -H "Content-Type: application/json" \
  -d '{"title":"ORM Practice1","max_score":100, "due_date":"2026-04-01"}'
echo
echo

echo "Creating another grade..."
curl -sS -X POST "$BASE_URL/exercises/grades" \
  -H "Content-Type: application/json" \
  -d '{"score":95,"student_id":2,"assignment_id":2, "comment":"Great work!"}'
echo
echo "Done."
