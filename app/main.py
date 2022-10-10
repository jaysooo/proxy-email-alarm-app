
from pydantic import BaseModel
from fastapi import FastAPI

app = FastAPI()

class EmailBody(BaseModel):
    email_content: str
    email_receiver: str

@app.get("/")
async def root():
    return {"message": "Hello World"}

    
@app.post('/v1/send_email/')
async def send_email(item: EmailBody):
    print(item)
    result = {'result':'ok'}
    return result


@app.post('/v1/send_type/')
async def send_type(q: list ):
    print(q)
    return {'result':'ok'}