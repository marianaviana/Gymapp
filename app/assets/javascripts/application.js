// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require highcharts/highcharts
//= require highcharts/highcharts-more
//= require bootstrap-sprockets
//= require turbolinks
//= require cocoon
//= require_tree .


$(document).on('turbolinks:load', function() {
  $('[id*="_grouptype_id"]').change(function() {
    var element_id = $(this).attr('id').match(/\d+/)[0];

    $.ajax({
      url: '/cycles/update_exercises',
      data: { grouptype_id: $(this).val(), id: element_id },
      success: function(data) {
      }
    });
  });

  $('#workouts')
    .on('cocoon:before-insert', function() {

    })
    .on('cocoon:after-insert', function() {
      $('[id*="_grouptype_id"]').change(function() {
        var element_id = $(this).attr('id').match(/\d+/)[0];

        $.ajax({
          url: '/cycles/update_exercises',
          data: { grouptype_id: $(this).val(), id: element_id },
          success: function(data) {
          }
        });
      });
    })
    .on("cocoon:before-remove", function() {
    })
    .on("cocoon:after-remove", function() {
    });
});
