# MediBot - Medical Chatbot with Retrieval-Augmented Generation (RAG)

Welcome to **MediBot**, a medical chatbot powered by **Large Language Models (LLMs)** and **Retrieval-Augmented Generation (RAG)**.  MediBot is designed to answer medical-related questions by retrieving relevant information from a knowledge base and generating accurate, context-aware responses.

---

## **Overview**

MediBot is built using the following technologies:
- **LangChain**: For orchestrating the LLM and retrieval pipeline.
- **Hugging Face Transformers**: For embedding generation and LLM inference.
- **FAISS**: For efficient similarity search and retrieval.
- **Streamlit**: For the user-friendly web interface.
- **Docker**: For containerization and deployment.

The chatbot uses a **RAG architecture** to:
1. Retrieve relevant medical information from a vectorized knowledge base.
2. Generate responses using a fine-tuned LLM (Mistral-7B-Instruct-v0.3).
3. Provide sources for the generated responses to ensure transparency and trustworthiness.

---

## **Features**
- **Natural Language Understanding**: MediBot understands and responds to medical queries in natural language.
- **Context-Aware Responses**: Uses RAG to provide accurate, context-aware answers.
- **Source Attribution**: Includes references to the source documents used to generate the response.
- **Scalable and Modular**: Built with modular components for easy scaling and maintenance.
- **Containerized Deployment**: Ready for deployment using Docker.

---

## **How It Works**
1. **Data Ingestion**:
   - Medical documents (PDFs) are loaded and split into chunks using `PyMuPDFLoader`.
   - Text chunks are embedded using `sentence-transformers/all-MiniLM-L6-v2` and stored in a FAISS vector store.

2. **Query Processing**:
   - When a user submits a query, the system retrieves the most relevant documents from the FAISS vector store.
   - The retrieved documents are passed to the LLM (Mistral-7B-Instruct-v0.3) along with the query to generate a response.

3. **Response Generation**:
   - The LLM generates a response based on the retrieved context.
   - The response and source documents are displayed to the user.
