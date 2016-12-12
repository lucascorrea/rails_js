# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  console.log($('#datatables'))
  $('#datatables .clickable-row').click ->
    customerId = $(this).data('customer')
    console.log("CustomerId: " + customerId)
    path    = "customers/" + customerId + "/recharges";
    $.ajax({
      url: path
      type: 'GET'
    });