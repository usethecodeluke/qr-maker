import uuid
import io

import pyqrcode as qr
from bottle import get, run, template, request

@get('/')
def index():
    code = qr.create(str(uuid.uuid4()))
    if 'curl' in request.headers.get('User-Agent').lower():
        return code.terminal()
    buffer = io.BytesIO()
    code.svg(buffer)
    return buffer.getvalue()

run(host='0.0.0.0', port=8080)
