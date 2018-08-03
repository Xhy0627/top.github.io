# Stubs for tornado.netutil (Python 2)
#
# NOTE: This dynamically typed stub was automatically generated by stubgen.

from typing import Any
from tornado.util import Configurable

ssl = ...  # type: Any
certifi = ...  # type: Any
xrange = ...  # type: Any
ssl_match_hostname = ...  # type: Any
SSLCertificateError = ...  # type: Any

def bind_sockets(port, address=..., family=..., backlog=..., flags=...): ...
def bind_unix_socket(file, mode=..., backlog=...): ...
def add_accept_handler(sock, callback, io_loop=...): ...
def is_valid_ip(ip): ...

class Resolver(Configurable):
    @classmethod
    def configurable_base(cls): ...
    @classmethod
    def configurable_default(cls): ...
    def resolve(self, host, port, family=..., callback=...): ...
    def close(self): ...

class ExecutorResolver(Resolver):
    io_loop = ...  # type: Any
    executor = ...  # type: Any
    close_executor = ...  # type: Any
    def initialize(self, io_loop=..., executor=..., close_executor=...): ...
    def close(self): ...
    def resolve(self, host, port, family=...): ...

class BlockingResolver(ExecutorResolver):
    def initialize(self, io_loop=...): ...

class ThreadedResolver(ExecutorResolver):
    def initialize(self, io_loop=..., num_threads=...): ...

class OverrideResolver(Resolver):
    resolver = ...  # type: Any
    mapping = ...  # type: Any
    def initialize(self, resolver, mapping): ...
    def close(self): ...
    def resolve(self, host, port, *args, **kwargs): ...

def ssl_options_to_context(ssl_options): ...
def ssl_wrap_socket(socket, ssl_options, server_hostname=..., **kwargs): ...