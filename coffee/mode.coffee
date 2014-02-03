class @Mode
    constructor: ->
        @modes =
            'abap': 'ABAP'
            'actionscript': 'ActionScript'
            'ada': 'ADA'
            'asciidoc': 'AsciiDoc'
            'c_cpp': 'C/C++'
            'clojure': 'Clojure'
            'cobol': 'Cobol'
            'coffee': 'CoffeeScript'
            'coldfusion': 'Coldfusion'
            'csharp': 'C#'
            'css': 'CSS'
            'curly': 'Curly'
            'd': 'D'
            'dart': 'Dart'
            'diff': 'Diff'
            'django': 'Django'
            'dot': 'Dot'
            'ftl': 'FreeMarker'
            'glsl': 'Glsl'
            'golang': 'Golang'
            'groovy': 'Groovy'
            'haml': 'HAML'
            'haxe': 'haXe'
            'html': 'HTML'
            'jade': 'Jade'
            'java': 'Java'
            'javascript': 'Javascript'
            'json': 'JSON'
            'jsp': 'JSP'
            'jsx': 'JSX'
            'latex': 'LaTex'
            'less': 'LESS'
            'liquid': 'Liquid'
            'lisp': 'Lisp'
            'livescript': 'LiveScript'
            'logiql': 'LogiQL'
            'lsl': 'LSL'
            'lua': 'Lua'
            'luapage': 'LuaPage'
            'lucene': 'Lucene'
            'makefile': 'Makefile'
            'markdown': 'Markdown'
            'mushcode': 'TinyMUSH'
            'objectivec': 'Objective-C'
            'ocaml': 'Ocaml'
            'pascal': 'Pascal'
            'perl': 'Perl'
            'pgsql': 'pgSQL'
            'php': 'PHP'
            'powershell': 'Powershell'
            'python': 'Python'
            'r': 'R'
            'rdoc': 'RDoc'
            'rhtml': 'RHTML'
            'ruby': 'Ruby'
            'sass': 'SASS'
            'scad': 'OpenSCAD'
            'scala': 'Scala'
            'scheme': 'Scheme'
            'scss': 'SCSS'
            'sh': 'Shell'
            'sql': 'SQL'
            'stylus': 'Stylus'
            'svg': 'SVG'
            'tcl': 'Tcl'
            'tex': 'Tex'
            'text': 'Text'
            'textile': 'Textile'
            'tmsnippet': 'tmSnippet'
            'toml': 'toml'
            'typescript': 'Typescript'
            'vbscript': 'VBScript'
            'velocity': 'Velocity'
            'xml': 'XML'
            'xquery': 'XQuery'
            'yaml': 'YAML'


        @extensions =
            'abap': 'abap'
            
            'as': 'actionscript'
            'actionscript': 'actionscript'
            
            'adb': 'ada'
            'ads': 'ada'
            'ada': 'ada'
        
            'asciidoc': 'asciidoc'
            
            'cpp': 'c_cpp'
            'h': 'c_cpp'
            'hh': 'c_cpp'
            'c': 'c_cpp'
            'hpp': 'c_cpp'
            'cc': 'c_cpp'
            'hxx': 'c_cpp'
            'cxx': 'c_cpp'
            'c++': 'c_cpp'
        
            'clj': 'clojure'
            'clojure': 'clojure'
            
            'cbl': 'cobol'
            'cobol': 'cobol'
        
            'coffee': 'coffee'
            'cf': 'coffee'
            'cson': 'coffee'
        
            'cfm': 'coldfusion'
            'cfml': 'coldfusion'
            'coldfusion': 'coldfusion'
        
            'cs': 'csharp'
            'csharp': 'csharp'
        
            'css': 'css'
        
            'curly': 'curly'
            
            'd': 'd'
        
            'dart': 'dart'
        
            'diff': 'diff'
            'patch': 'diff'
        
            'dot': 'dot'
            
            'ftl': 'ftl'
            'freemarker': 'ftl'
        
            'glsl': 'glsl'
            'vert': 'glsl'
            'frag': 'glsl'
        
            'go': 'golang'
            'golang': 'golang'
        
            'groovy': 'groovy'
            'gvy': 'groovy'
            'gy': 'groovy'
            'gsh': 'groovy'
        
            'haml': 'haml'
        
            'hx': 'haxe'
            'haxe': 'haxe'
        
            'htm': 'html'
            'html': 'html'
            'xhtml': 'html'
            'erb': 'html'
            'hbs': 'html'
            'cow': 'html'
        
            'jade': 'jade'
        
            'java': 'java'
        
            'js': 'javascript'
            'javascript': 'javascript'
        
            'json': 'json'
        
            'jsp': 'jsp'
        
            'jsx': 'jsx'
        
            'latex': 'latex'
            'tex': 'latex'
            'ltx': 'latex'
            'bib': 'latex'
        
            'less': 'less'
        
            'liquid': 'liquid'
        
            'lisp': 'lisp'
        
            'lua': 'lua'
        
            'luapage': 'luapage'
            'lp': 'luapage'
        
            'lucene': 'lucene'
            
            'livescript': 'livescript'
            'ls': 'livescript'
            
            'logiql': 'logiql'
            'lql': 'logiql'
            'logic': 'logiql'
            
            'lsl': 'lsl'
        
            'cmake': 'makefile'
            'make': 'makefile'
            'makefile': 'makefile'
        
            'md': 'markdown'
            'markdown': 'markdown'
            
            'mc': 'mushcode'
            'mush': 'mushcode'
            'mushcode': 'mushcode'
        
            'm': 'objectivec'
            'mm': 'objectivec'
            'objectivec': 'objectivec'
        
            'ml': 'ocaml'
            'mli': 'ocaml'
            'ocaml': 'ocaml'
            
            'pascal': 'pascal'
            'p': 'pascal'
            'pas': 'pascal'
        
            'pl': 'perl'
            'pm': 'perl'
            'perl': 'perl'
        
            'pgsql': 'pgsql'
        
            'php': 'php'
            'phtml': 'php'
        
            'ps1': 'powershell'
            'ps1xml': 'powershell'
            'psc1': 'powershell'
            'psd1': 'powershell'
            'psm1': 'powershell'
            'powershell': 'powershell'
        
            'py': 'python'
            'python': 'python'
        
            'r': 'r'
        
            'rdoc': 'rdoc'
            'rd': 'rdoc'
        
            'rhtml': 'rhtml'
        
            'rb': 'ruby'
            'ru': 'ruby'
            'gemspec': 'ruby'
            'rake': 'ruby'
            'ruby': 'ruby'
        
            'scad': 'scad'
        
            'scala': 'scala'
            
            'scm': 'scheme'
            'rkt': 'scheme'
            'scheme': 'scheme'
        
            'sass': 'sass'
            
            'scss': 'scss'
        
            'sh': 'sh'
            'bash': 'sh'
            'bat': 'sh'
        
            'sql': 'sql'
        
            'stylus': 'stylus'
            'styl': 'stylus'
        
            'svg': 'svg'
        
            'tcl': 'tcl'
        
            'tex': 'tex'
        
            'txt': 'text'
            'text': 'text'
            'log': 'text'
            'conf': 'text'
        
            'textile': 'textile'
            
            'tmsnippet': 'tmsnippet'
            
            'toml': 'toml'
        
            'typescript': 'typescript'
            'ts': 'typescript'
            'str': 'typescript'
        
            'vbscript': 'vbscript'
            'vbs': 'vbscript'
            
            'vm': 'velocity'
            'velocity': 'velocity'
        
            'xml': 'xml'
            'rdf': 'xml'
            'rss': 'xml'
            'wsdl': 'xml'
            'xslt': 'xml'
            'atom': 'xml'
            'mathml': 'xml'
            'mml': 'xml'
            'xul': 'xml'
            'xbl': 'xml'
        
            'xquery': 'xquery'
            'xq': 'xquery'
        
            'yaml': 'yaml'
            'yml': 'yaml'


        @names =
            'Cakefile': 'coffee'
            'Gemfile': 'ruby'
            'GNUmakefile': 'makefile'
            'makefile': 'makefile'
            'Makefile': 'makefile'
            'OCamlMakefile': 'makefile'
    

        @binaries =
            'gif': true
            'png': true
            'jpg': true
            'jpeg': true
            'ico': true
            'bmp': true
            'psd': true
            'tiff': true
            
            'iso': true
            'zip': true
            'rar': true
            'tar': true
            'jar': true
            '7z': true
            'war': true
            'gzip': true
            'bz2': true
            'cab': true
            'uue': true
            'gz': true
            'bzip2': true
            'dmg': true
            'deb': true
            'rpm': true
            'tgz': true
            'z': true
            
            'mp3': true
            'mp4': true
            'avi': true
            'mov': true
            'rm': true
            'rmvb': true
            'asf': true
            'mtv': true
            'amv': true
            'swf': true
            'divx': true
            'wmv': true
            'smv': true
            '3gp': true
            'mkv': true
            'flv': true
            'f4v': true
            'webm': true
            'wav': true
            
            'pyc': true
            'swp': true
            
            'dll': true
            'so': true
            
            'woff': true
            'eot': true
            'ttf': true
            'otf': true
            
            'rsrc': true
            
            'exe': true
            'msi': true
            
            'doc': true
            'docx': true
            'ppt': true
            'xls': true
            'wk4': true
            'shw': true
            'wb2': true
            'wpd': true
            'wpg': true
            'pdf': true
            
            'vdi': true

    guess_mode_by_extension: (file_extension) ->
        mode = @extensions[file_extension]
        if not mode
            mode = 'text'
        return "ace/mode/#{mode}"

    guess_mode_by_name: (name) ->
        mode = @names[name]
        if not mode
            mode = 'text'
        return "ace/mode/#{mode}"

    is_binary: (file_extension) ->
        return true if @binaries[file_extension]
        return false
