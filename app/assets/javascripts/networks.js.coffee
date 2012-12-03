jQuery ->
  $("#network_country_alpha2_code").change (e)->
    console.log("changed", e, $(this).val())
