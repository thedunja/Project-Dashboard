from fastapi import FastAPI
from routers import auth
from db.models import Base
from db.database import engine

app = FastAPI()

Base.metadata.create_all(bind=engine)


@app.get("/")
async def root():
    return {"message": "Hello Final!"}

app.include_router(auth.router)
