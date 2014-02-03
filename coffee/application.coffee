class @Application
    constructor: (@path) ->
        @create_layout()
        @create_topbar()
        @show_breadcrumb @path
        @show_sidebar @path

    create_layout: ->
        window.layout = $('body').layout
            spacing_closed: 5
            stateManagement__enabled: true
            resizerDblClickToggle: false
            north:
                slidable: false
                spacing_open: 18
                size: 24
                resizable: false
                togglerLength_open: 0
                togglerTip_closed: chrome.i18n.getMessage('exit_full_window')
                onopen_start: ->
                    window.layout.open 'west'
                    $('#navbar').show()
                    $('#toolbar').show()
                onclose_start: ->
                    window.layout.close 'west'
                    $('#navbar').hide()
                    $('#toolbar').hide()
            west:
                spacing_open: 5
                livePaneResizing: true
                size: 192
                togglerLength_open: 0
                togglerLength_closed: 0
                slideTrigger_open: 'mouseover'
                resizerTip: chrome.i18n.getMessage('resize')
            center:
                onresize_end: ->
                    current_editor = util.current_editor()
                    if current_editor
                        current_editor.editor.resize()

    create_topbar: ->
        $('.ui-layout-resizer-north').append """<div id="navbar">
    <span class="dropdown">
      <a class="dropdown-toggle" data-toggle="dropdown">
        #{chrome.i18n.getMessage('file')}
        <b class="caret"></b>
      </a>
      <ul class="dropdown-menu">
          <li><a class="new_file_btn">#{chrome.i18n.getMessage('new_file')}</a></li>
          <li><a class="new_folder_btn">#{chrome.i18n.getMessage('new_folder')}</a></li>
          <li><a class="save_btn">#{chrome.i18n.getMessage('save')}</a></li>
          <li><a class="save_all_btn">#{chrome.i18n.getMessage('save_all')}</a></li>
          <li><a class="close_tab_btn">#{chrome.i18n.getMessage('close_tab')}</a></li>
          <li><a class="close_other_tabs_btn">#{chrome.i18n.getMessage('close_other_tabs')}</a></li>
          <li><a class="close_all_tabs_btn">#{chrome.i18n.getMessage('close_all_tabs')}</a></li>
      </ul>
    </span>
    <span class="dropdown">
      <a class="dropdown-toggle" data-toggle="dropdown">
        #{chrome.i18n.getMessage('edit')}
        <b class="caret"></b>
      </a>
      <ul class="dropdown-menu">
        <li><a class="indent_btn">#{chrome.i18n.getMessage('indent')}</a></li>
        <li><a class="outdent_btn">#{chrome.i18n.getMessage('outdent')}</a></li>
        <li><a class="lower_case_btn">#{chrome.i18n.getMessage('lower_case')}</a></li>
        <li><a class="upper_case_btn">#{chrome.i18n.getMessage('upper_case')}</a></li>
        <li><a class="remove_lines_btn">#{chrome.i18n.getMessage('remove_lines')}</a></li>
        <li><a class="toggle_comment_btn">#{chrome.i18n.getMessage('toggle_comment')}</a></li>
        <li><a class="trim_trailing_space_btn">#{chrome.i18n.getMessage('trim_trailing_space')}</a></li>
        <li><a class="ensure_newline_at_eof_btn">#{chrome.i18n.getMessage('ensure_newline_at_eof')}</a></li>
        <li class="divider"></li>
        <li><a class="preferences_btn">#{chrome.i18n.getMessage('preferences')}</a></li>
      </ul>
    </span>
    <span class="dropdown">
      <a class="dropdown-toggle" data-toggle="dropdown">
        #{chrome.i18n.getMessage('search')}
        <b class="caret"></b>
      </a>
      <ul class="dropdown-menu">
        <li><a class="find_btn">#{chrome.i18n.getMessage('find')}</a></li>
        <li><a class="replace_btn">#{chrome.i18n.getMessage('replace')}</a></li>
      </ul>
    </span>
    <span class="dropdown">
      <a class="dropdown-toggle" data-toggle="dropdown">
        #{chrome.i18n.getMessage('view')}
        <b class="caret"></b>
      </a>
      <ul class="dropdown-menu">
          <li class="dropdown-submenu">
              <a>#{chrome.i18n.getMessage('syntax')}</a>
              <ul class="dropdown-menu" id="mode_list"></ul>
          </li>
          <li><a class="toggle_word_wrap_btn">#{chrome.i18n.getMessage('toggle_word_wrap')}</a></li>
          <li><a class="toggle_invisibles_btn">#{chrome.i18n.getMessage('toggle_invisibles')}</a></li>
          <li><a class="full_window_btn">#{chrome.i18n.getMessage('full_window')}</a></li>
          <li><a class="pop_out_btn">#{chrome.i18n.getMessage('pop_out')}</a></li>
      </ul>
    </span>
    <span class="dropdown">
      <a class="dropdown-toggle" data-toggle="dropdown">
        #{chrome.i18n.getMessage('help')}
        <b class="caret"></b>
      </a>
      <ul class="dropdown-menu">
          <li><a href="https://github.com/ajaxorg/ace/wiki/Default-Keyboard-Shortcuts" target="_blank">#{chrome.i18n.getMessage('keyboard_shortcuts')}</a></li>
          <li><a href="http://slimtext.org" target="_blank">#{chrome.i18n.getMessage('website')}</a></li>
          <li><a href="https://github.com/tylerlong/slim_text/issues" target="_blank">#{chrome.i18n.getMessage('report_issue')}</a></li>
          <li><a class="check_for_updates_btn">#{chrome.i18n.getMessage('check_for_updates')}</a></li>
          <li><a class="about_btn">#{chrome.i18n.getMessage('about')}</a></li>
      </ul>
    </span>
</div>
<div id="toolbar">
  <a class="new_file_btn" title="#{chrome.i18n.getMessage('new_file')}"><i class="icon-file"></i></a>
  <a class="new_folder_btn" title="#{chrome.i18n.getMessage('new_folder')}"><i class="icon-folder-close-alt"></i></a>
  <a class="save_btn" title="#{chrome.i18n.getMessage('save')}"><i class="icon-save"></i></a>
  <a class="find_btn" title="#{chrome.i18n.getMessage('find')}"><i class="icon-search"></i></a>
  <a class="toggle_invisibles_btn" title="#{chrome.i18n.getMessage('toggle_invisibles')}"><i class="icon-eye-open"></i></a>
  <a class="full_window_btn" title="#{chrome.i18n.getMessage('full_window')}"><i class="icon-fullscreen"></i></a>
  <a class="pop_out_btn" title="#{chrome.i18n.getMessage('pop_out')}"><i class="icon-external-link"></i></a>
  <a class="preferences_btn" title="#{chrome.i18n.getMessage('preferences')}"><i class="icon-cog"></i></a>
  <a class="check_for_updates_btn" title="#{chrome.i18n.getMessage('check_for_updates')}"><i class="icon-cloud-download"></i></a>
  <a title="#{chrome.i18n.getMessage('report_issue')}" href="https://github.com/tylerlong/slim_text/issues" target="_blank"><i class="icon-github-alt"></i></a>
  <a class="about_btn" title="#{chrome.i18n.getMessage('about')}"><i class="icon-info-sign"></i></a>
  <i class="icon-fullscreen" id="hidden_btn"></i>
</div>"""
        ranges = [['a', 'd'], ['e', 'j'], ['k', 'o'], ['p', 's'], ['t', 'z']]
        pairs = []
        for range in ranges
            $('#mode_list').append """
    <li class="dropdown-submenu">
        <a>#{range[0].toUpperCase()} - #{range[1].toUpperCase()}</a>
        <ul class="dropdown-menu" id="#{range[0]}_to_#{range[1]}"></ul>
    </li>
    """
            pairs.push [RegExp("^[#{range[0]}-#{range[1]}]", 'i'), "##{range[0]}_to_#{range[1]}"]
        for key, name of mode.modes
            item = """<li><a data-mode="#{key}" class="mode_link">#{name}</a></li>"""
            for pair in pairs
                if name.match pair[0]
                    $(pair[1]).append item
                    break
        window.layout.allowOverflow($('.ui-layout-resizer-north'))
        if window.layout.state.north.isClosed
            $('#navbar').hide()
            $('#toolbar').hide()

    show_breadcrumb: (path) ->
        if path.substr(path.length - 1) != '/'
            path = path + '/'
        document.title = path
        $('#route').empty()
        route = file_manager.route(path)
        route.reverse()
        if navigator.appVersion.indexOf('Windows') != -1
            first = _.first route
            route = _.rest route
            second = _.first route
            if second
                second.name = first.name
            if route.length == 0
                drives = $('<select id="drives_select"></select>')
                for drive in file_manager.drives()
                    drives.append """<option value="#{drive}">#{drive.substr(0, drive.length - 1)}</option>"""
                drives.val(first.name.toUpperCase() + '/')
                $('#route').append drives
        else
            if route.length ==0
                $('#route').append('/')
        for item in _.initial(route)
            link = $("""<a class="folder_link">#{item.name}</a>""")
            link.data("path", item.path)
            $('#route').append(link)
            if item.name == '/'
                $('#route').append(' ')
            else
                $('#route').append(' / ')
        item = _.last(route)
        if item
            $('#route').append("#{item.name} /")

    show_sidebar: (path, filePath = null) ->
        $('#sidebar').empty()
        items = file_manager.list(path)
        items = _.sortBy items, (item) ->
            item.name.toLowerCase()
        if not filePath
            current_editor = util.current_editor()
            if current_editor
                filePath = current_editor.path
        for item in items
            if util.clickable(item)
                link = $("""<a class="#{item.type}_link">#{item.name}</a>""")
                link.data("path", item.path)
                $('#sidebar').append link
                if filePath == item.path
                    link.css 'color', 'white'
                    link.css 'cursor', 'text'
                if item.type == 'folder'
                    $('#sidebar').append '/'
            else
                $('#sidebar').append "<span>#{item.name}</span>"
            $('#sidebar').append "<br/>"

    refresh_sidebar: (filePath = null)->
        @show_sidebar document.title, filePath

    open_file: (path) ->
        editor = new Editor path
        editors[editor.uid] = editor
