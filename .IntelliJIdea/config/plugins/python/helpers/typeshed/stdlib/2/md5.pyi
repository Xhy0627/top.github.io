# Stubs for Python 2.7 md5 stdlib module

class md5(object):
    def update(self, arg: str) -> None: ...
    def digest(self) -> str: ...
    def hexdigest(self) -> str: ...
    def copy(self) -> md5: ...

def new(string: str = ...) -> md5: ...
blocksize = 0
digest_size = 0
