from flask import Request


def handle(r: Request):
    # TODO: handle the request
    input = r.get_data()
    return str(input)


def init():
    # TODO: pre-request work
    return
