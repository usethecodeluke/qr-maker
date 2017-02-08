import io

import pyqrcode as qr
from bottle import get, run, template, request

@get('/')
def index():
    value = 'https://mystuff.rackspace.com/personal/just0707/Documents/Shared%20with%20Everyone/procfs_presentation.pptx?Web=1'
    if 'value' in request.GET.keys():
        value = request.GET['value']
    code = qr.create(value)
    if 'curl' in request.headers.get('User-Agent').lower():
        return code.terminal()
    buffer = io.BytesIO()
    code.svg(buffer, scale=4)
    return buffer.getvalue()

run(host='0.0.0.0', port=8080)
