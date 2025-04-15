#!/usr/bin/env bash
# run_all.sh: Launch Backend, Frontend, Admin, and then run Tests

# Function to print a header and run a command
run_section() {
  echo "=================================================="
  echo "$1"
  echo "=================================================="
  eval "$2"
  echo ""
}

# BACKEND
run_section "Setting up BACKEND" "cd ../backend && npm install cors dotenv express mongoose jsonwebtoken nodemon razorpay stripe validator cloudinary bcrypt multer"
run_section "Running BACKEND in dev mode" "cd ../backend && npm run dev &"  # run in background

# FRONTEND
run_section "Setting up FRONTEND" "cd ../frontend && npm install"
run_section "Running FRONTEND in dev mode" "cd ../frontend && npm run dev &"  # run in background

# ADMIN
run_section "Running ADMIN in dev mode" "cd ../admin && npm run dev &"  # run in background

# Wait a moment for the dev servers to start
sleep 5

# TESTS
# Assuming test dependencies and the test command are defined in the project root package.json
run_section "Setting up Tests" "cd ../frontend && npm install -D vitest @testing-library/react @testing-library/jest-dom jsdom axios"
run_section "Setting up Frontend Test Dependencies" "cd ../frontend && npm install -D react-router-dom @types/jest @types/react @types/react-dom @types/react-router-dom"
run_section "Running Tests" "cd ../frontend && npm run test"

echo "All tasks complete!"

# Keep background processes running
wait



