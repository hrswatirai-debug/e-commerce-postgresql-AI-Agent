
🚀 AI Chat-to-SQL Agent (n8n + PostgreSQL + OpenAI)

📌 Overview

This project demonstrates how to build a production-ready AI-powered data assistant that allows users to interact with a PostgreSQL database using natural language.

Instead of writing SQL queries manually, users can simply ask questions like:

"Show all products"
"Which items are low in stock?"
"What is the most expensive product?"

The system intelligently converts these queries into SQL, executes them, and returns structured, human-readable responses.

🧠 Key Concept

This project implements a Chat-to-SQL pipeline, where:

User input is captured via n8n chat trigger
OpenAI model interprets the query
AI generates a valid SQL statement
PostgreSQL executes the query
Results are formatted and returned to the user

🏗️ Architecture
graph TD
A[User Input] --> B[n8n Chat Trigger]
B --> C[AI Agent]
C --> D[OpenAI Model]
C --> E[PostgreSQL Tool]
E --> F[Database]
F --> C
C --> G[Response to User]

⚙️ Tech Stack
n8n – Workflow automation & orchestration
PostgreSQL – Relational database
pgAdmin – Database management UI
OpenAI API – Natural language processing
Docker – Containerized environment

📂 Project Structure
.
├── docker-compose.yml
├── Chat with Database.json
├── README.md

🧩 Features
Natural language to SQL conversion
AI-powered query understanding
Memory-enabled contextual conversations
Secure query constraints (SELECT-only execution)
Modular and extensible workflow design

🔐 Safety Controls
The AI agent is constrained with rules to:

Only access the products table
Execute SELECT queries only
Prevent destructive operations (INSERT, UPDATE, DELETE, DROP)

🛠️ Setup Instructions
1. Clone the repository
git clone https://github.com/your-username/chat-to-sql-ai-agent.git
cd chat-to-sql-ai-agent

2. Start services using Docker
docker-compose up -d

3. Access services
n8n → http://localhost:5678
pgAdmin → http://localhost:5050

4. Configure PostgreSQL

Create table:

CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    price NUMERIC,
    stock INTEGER,
    category VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

Insert sample data:

INSERT INTO products (name, price, stock, category)
VALUES
('Laptop', 1200, 10, 'Electronics'),
('Mouse', 25, 200, 'Accessories'),
('Keyboard', 75, 150, 'Accessories'),
('Monitor', 300, 50, 'Electronics'),
('Office Chair', 180, 20, 'Office');

5. Import n8n Workflow
Open n8n
Import Chat with Database.json
Configure:
OpenAI API credentials
PostgreSQL credentials

6. Activate Workflow

Start querying your database via chat.

💬 Example Queries
“List all products”
“Show low stock items”
“Sort electronics by price”
“How many products per category?”

📈 Use Cases
Business intelligence assistant
HR analytics chatbot
Inventory management insights
Data exploration without SQL knowledge

🚀 Future Enhancements
Multi-table support
Role-based query access
Dashboard integration (Streamlit / React)
API exposure for external apps
Vector search + semantic querying

🤝 Contribution

Contributions, improvements, and suggestions are welcome.

📄 License

MIT License
