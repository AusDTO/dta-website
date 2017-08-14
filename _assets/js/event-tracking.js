$(document).ready(function(){
  var extensionList = ['.pdf','.doc','.docx','.xls','.xslx','.rtf','.mp4','.srt','.ppt','.pptx'];
  $.each(extensionList, function(index, extension) {
    $('a[href$="' + extension + '"]').click(function(e) {
        var pathName = e.currentTarget.pathname;
        var eventCategory = pathName.substr(pathName.lastIndexOf('.') +1).toUpperCase();
        e.currentTarget.title ? eventLabel = e.currentTarget.title : eventLabel = decodeURI(pathName.substr(pathName.lastIndexOf('/') +1));
        ga('send', 'event', eventCategory, 'Download', eventLabel);
      }
    );
  });
});
