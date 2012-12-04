jQuery ->
  $("#network_country_alpha2_code").change (e)->
    console.log("changed", e, $(this).val())
    select_wrapper = $(this).parent().next()
    country_code = $(this).val()
    url = "/state_province_list?country_code=#{country_code}"
    select_wrapper.load(url)
