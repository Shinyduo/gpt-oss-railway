# Start from the official Ollama image
FROM ollama/ollama

# Copy the Modelfile to create the 'phi-2-custom' model inside the container
COPY ./Modelfile /etc/ollama/

# This command runs when the container starts.
# It creates the custom model and then starts the Ollama server.
CMD sh -c "ollama create phi-2-custom -f /etc/ollama/Modelfile && ollama serve"
