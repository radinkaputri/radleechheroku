FROM dawn001/z_mirror:hk_latest

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

RUN pip3 install --no-cache-dir aiofiles aioshutil aiohttp anytree apscheduler aria2p asyncio cloudscraper dnspython feedparser flask gevent google-api-python-client google-auth-httplib2 google-auth-oauthlib gunicorn httpx lxml motor natsort pillow psutil pymongo git+https://github.com/KurimuzonAkuma/pyrogram.git python-dotenv python-magic qbittorrent-api requests telegraph tenacity tgcrypto urllib3 uvloop xattr yt-dlp

COPY . .

CMD ["bash", "start.sh"]
