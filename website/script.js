$(function() {
  // ColorBox preview
  $('#buttons a').colorbox({
    rel: 'button',
    title: function () { return $(this).attr('original-title');},
    initialWidth: 402,
    initialHeight: 402
  });
  // Tooltips
  $('#buttons a').tipsy({opacity: 1});	
}); 
