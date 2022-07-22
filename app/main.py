from fastapi import FastAPI
import uvicorn
import sys

app = FastAPI()


@app.get("/")
async def root():
    return {"message": "Hello World"}


def main(args):
    """主函数"""
    host = args[1]
    uvicorn.run("main:app", host=host, port=8111, reload=True, debug=True)


if __name__ == '__main__':
    main(sys.argv)