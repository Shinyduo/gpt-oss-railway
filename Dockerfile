# Use the official vLLM image which comes with CUDA and vLLM pre-installed
FROM vllm/vllm-openai:latest

# Set environment variables for the vLLM server
# We are telling it which model to serve.
ENV MODEL_NAME=openai/gpt-oss-20b

# By default, the vLLM entrypoint will start the server.
# We need to expose the port that the server will run on.
# The default port for the vLLM OpenAI-compatible server is 8000.
EXPOSE 8000
