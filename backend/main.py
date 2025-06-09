##uvicorn main:app --reload #--host 0.0.0.0 --port 8000

from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from pydantic import BaseModel
import os
import google.generativeai as genai
import lib.history_google_chat as chat

app = FastAPI()

origins = [
    "http://10.0.2.2:8000",
    "http://localhost:5500",
    #"http://127.0.0.1:5500",
    #"http://10.0.2.2",  # Covers requests without a port
]

app.add_middleware(
    CORSMiddleware,
    allow_origins=origins, #["*"], 
    allow_credentials=True,
    allow_methods=["POST", "OPTIONS"],
    allow_headers=["*"], # Allow common headers
)

class ChatRequest(BaseModel):
    prompt: str

class ChatResponse(BaseModel):
    response: str

@app.post("/chat", response_model=ChatResponse)
async def chat_with_bro(req: ChatRequest):
    try:
        response = chat.generate_content(req.prompt)
        return {"response": response}
    except Exception as e:
        return {"response": f"Error: {str(e)}"}

    # return {"response": "This is a placeholder response. Replace with actual model response."}


