# Stubs for jinja2.environment (Python 3.5)
#
# NOTE: This dynamically typed stub was automatically generated by stubgen.

from typing import Any, Callable, Dict, Iterator, List, Optional, Text, Type, Union

from .bccache import BytecodeCache
from .loaders import BaseLoader
from .runtime import Context, Undefined

def get_spontaneous_environment(*args): ...
def create_cache(size): ...
def copy_cache(cache): ...
def load_extensions(environment, extensions): ...

class Environment:
    sandboxed = ...  # type: bool
    overlayed = ...  # type: bool
    linked_to = ...  # type: Any
    shared = ...  # type: bool
    exception_handler = ...  # type: Any
    exception_formatter = ...  # type: Any
    code_generator_class = ...  # type: Any
    context_class = ...  # type: Any
    block_start_string = ...  # type: Text
    block_end_string = ...  # type: Text
    variable_start_string = ...  # type: Text
    variable_end_string = ...  # type: Text
    comment_start_string = ...  # type: Text
    comment_end_string = ...  # type: Text
    line_statement_prefix = ...  # type: Text
    line_comment_prefix = ...  # type: Text
    trim_blocks = ...  # type: bool
    lstrip_blocks = ...  # type: Any
    newline_sequence = ...  # type: Text
    keep_trailing_newline = ...  # type: bool
    undefined = ...  # type: Type[Undefined]
    optimized = ...  # type: bool
    finalize = ...  # type: Callable
    autoescape = ...  # type: Any
    filters = ...  # type: Any
    tests = ...  # type: Any
    globals = ...  # type: Dict[str, Any]
    loader = ...  # type: BaseLoader
    cache = ...  # type: Any
    bytecode_cache = ...  # type: BytecodeCache
    auto_reload = ...  # type: bool
    extensions = ...  # type: List
    def __init__(self, block_start_string: Text = ..., block_end_string: Text = ..., variable_start_string: Text = ..., variable_end_string: Text = ..., comment_start_string: Any = ..., comment_end_string: Text = ..., line_statement_prefix: Text = ..., line_comment_prefix: Text = ..., trim_blocks: bool = ..., lstrip_blocks: bool = ..., newline_sequence: Text = ..., keep_trailing_newline: bool = ..., extensions: List = ..., optimized: bool = ..., undefined: Type[Undefined] = ..., finalize: Optional[Callable] = ..., autoescape: bool = ..., loader: Optional[BaseLoader] = ..., cache_size: int = ..., auto_reload: bool = ..., bytecode_cache: Optional[BytecodeCache] = ...) -> None: ...
    def add_extension(self, extension): ...
    def extend(self, **attributes): ...
    def overlay(self, block_start_string: Text = ..., block_end_string: Text = ..., variable_start_string: Text = ..., variable_end_string: Text = ..., comment_start_string: Any = ..., comment_end_string: Text = ..., line_statement_prefix: Text = ..., line_comment_prefix: Text = ..., trim_blocks: bool = ..., lstrip_blocks: bool = ..., extensions: List = ..., optimized: bool = ..., undefined: Type[Undefined] = ..., finalize: Callable = ..., autoescape: bool = ..., loader: Optional[BaseLoader] = ..., cache_size: int = ..., auto_reload: bool = ..., bytecode_cache: Optional[BytecodeCache] = ...): ...
    lexer = ...  # type: Any
    def iter_extensions(self): ...
    def getitem(self, obj, argument): ...
    def getattr(self, obj, attribute): ...
    def call_filter(self, name, value, args: Optional[Any] = ..., kwargs: Optional[Any] = ..., context: Optional[Any] = ..., eval_ctx: Optional[Any] = ...): ...
    def call_test(self, name, value, args: Optional[Any] = ..., kwargs: Optional[Any] = ...): ...
    def parse(self, source, name: Optional[Any] = ..., filename: Optional[Any] = ...): ...
    def lex(self, source, name: Optional[Any] = ..., filename: Optional[Any] = ...): ...
    def preprocess(self, source: Text, name: Optional[Any] = ..., filename: Optional[Any] = ...): ...
    def compile(self, source, name: Optional[Any] = ..., filename: Optional[Any] = ..., raw: bool = ..., defer_init: bool = ...): ...
    def compile_expression(self, source: Text, undefined_to_none: bool = ...): ...
    def compile_templates(self, target, extensions: Optional[Any] = ..., filter_func: Optional[Any] = ..., zip: str = ..., log_function: Optional[Any] = ..., ignore_errors: bool = ..., py_compile: bool = ...): ...
    def list_templates(self, extensions: Optional[Any] = ..., filter_func: Optional[Any] = ...): ...
    def handle_exception(self, exc_info: Optional[Any] = ..., rendered: bool = ..., source_hint: Optional[Any] = ...): ...
    def join_path(self, template: Union[Template, Text], parent: Text) -> Text: ...
    def get_template(self, name: Union[Template, Text], parent: Optional[Text] = ..., globals: Optional[Any] = ...) -> Template: ...
    def select_template(self, names: List[Union[Template, Text]], parent: Optional[Text] = ..., globals: Optional[Dict[str, Any]] = ...) -> Template: ...
    def get_or_select_template(self, template_name_or_list: Union[Union[Template, Text], List[Union[Template, Text]]], parent: Optional[Text] = ..., globals: Optional[Dict[str, Any]] = ...) -> Template: ...
    def from_string(self, source: Text, globals: Optional[Dict[str, Any]] = ..., template_class: Optional[Type[Template]] = ...) -> Template: ...
    def make_globals(self, d: Optional[Dict[str, Any]]) -> Dict[str, Any]: ...

    # Frequently added extensions are included here:
    # from InternationalizationExtension:
    def install_gettext_translations(self, translations: Any, newstyle: Optional[bool]): ...
    def install_null_translations(self, newstyle: Optional[bool]): ...
    def install_gettext_callables(self, gettext: Callable, ngettext: Callable,
                                  newstyle: Optional[bool]): ...
    def uninstall_gettext_translations(self, translations: Any): ...
    def extract_translations(self, source: Any, gettext_functions: Any): ...
    newstyle_gettext = ...  # type: bool

class Template:
    def __new__(cls, source, block_start_string: Any = ..., block_end_string: Any = ..., variable_start_string: Any = ..., variable_end_string: Any = ..., comment_start_string: Any = ..., comment_end_string: Any = ..., line_statement_prefix: Any = ..., line_comment_prefix: Any = ..., trim_blocks: Any = ..., lstrip_blocks: Any = ..., newline_sequence: Any = ..., keep_trailing_newline: Any = ..., extensions: Any = ..., optimized: bool = ..., undefined: Any = ..., finalize: Optional[Any] = ..., autoescape: bool = ...): ...
    @classmethod
    def from_code(cls, environment, code, globals, uptodate: Optional[Any] = ...): ...
    @classmethod
    def from_module_dict(cls, environment, module_dict, globals): ...
    def render(self, *args, **kwargs) -> Text: ...
    def stream(self, *args, **kwargs) -> TemplateStream: ...
    def generate(self, *args, **kwargs) -> Iterator[Text]: ...
    def new_context(self, vars: Optional[Dict[str, Any]] = ..., shared: bool = ..., locals: Optional[Dict[str, Any]] = ...) -> Context: ...
    def make_module(self, vars: Optional[Dict[str, Any]] = ..., shared: bool = ..., locals: Optional[Dict[str, Any]] = ...) -> Context: ...
    @property
    def module(self) -> Any: ...
    def get_corresponding_lineno(self, lineno): ...
    @property
    def is_up_to_date(self) -> bool: ...
    @property
    def debug_info(self): ...

class TemplateModule:
    __name__ = ...  # type: Any
    def __init__(self, template, context) -> None: ...
    def __html__(self): ...

class TemplateExpression:
    def __init__(self, template, undefined_to_none) -> None: ...
    def __call__(self, *args, **kwargs): ...

class TemplateStream:
    def __init__(self, gen) -> None: ...
    def dump(self, fp, encoding: Optional[Text] = ..., errors: Text = ...): ...
    buffered = ...  # type: bool
    def disable_buffering(self) -> None: ...
    def enable_buffering(self, size: int = ...) -> None: ...
    def __iter__(self): ...
    def __next__(self): ...