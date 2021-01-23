from flask import Request


def handle(r: Request):
    # TODO: handle the request
    input = r.form["input"]
    return str(input)


def init():
    return