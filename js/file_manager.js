// Generated by CoffeeScript 1.6.1
(function() {

  this.FileManager = (function() {

    function FileManager() {
      this.file_manager = document.getElementById('file_manager');
    }

    FileManager.prototype.combine = function(path1, path2) {
      return this.file_manager.combine(path1, path2);
    };

    FileManager.prototype.container = function(path) {
      return this.file_manager.container(path);
    };

    FileManager.prototype.filename = function(path) {
      return this.file_manager.filename(path);
    };

    FileManager.prototype.read = function(path) {
      return this.file_manager.read(path);
    };

    FileManager.prototype.extension = function(filename) {
      return this.file_manager.extension(filename);
    };

    FileManager.prototype.write = function(path, content) {
      return this.file_manager.write(path, content);
    };

    FileManager.prototype.valid_name = function(filename) {
      return this.file_manager.valid_name(filename);
    };

    FileManager.prototype.exists = function(path) {
      return this.file_manager.exists(path);
    };

    FileManager.prototype.type = function(path) {
      return this.file_manager.type(path);
    };

    FileManager.prototype.create_file = function(path) {
      return this.write(path, '');
    };

    FileManager.prototype.create_folder = function(path) {
      return this.file_manager.create_folder(path);
    };

    FileManager.prototype.route = function(path) {
      return this.file_manager.route(path);
    };

    FileManager.prototype.can_list = function(path) {
      return this.file_manager.can_list;
    };

    FileManager.prototype.home_folder = function() {
      return this.file_manager.home_folder();
    };

    FileManager.prototype.temp_folder = function() {
      return this.file_manager.temp_folder();
    };

    FileManager.prototype.drives = function() {
      return this.file_manager.drives();
    };

    FileManager.prototype.list = function(path) {
      return this.file_manager.list(path);
    };

    return FileManager;

  })();

}).call(this);
