import os
import sys
from pyrogram import Client



def restart():
    os.execvp(sys.executable, [sys.executable, "-m", "Faded"])

async def join(client):
    try:
        await client.join_chat("SANATANI_SUPPORT")
    except BaseException:
        pass
