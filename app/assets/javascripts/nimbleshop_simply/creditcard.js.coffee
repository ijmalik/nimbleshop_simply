window.NimbleshopSimply = window.NimbleshopSimply || {}

NimbleshopSimply.validateCreditCard = class ValidateCreditcard
  constructor: ->
    $("#creditcard_number").validateCreditCard (result) ->
      if (result.length_valid && result.luhn_valid)
        $('#creditcard_number').addClass('valid')
      else
        $('#creditcard_number').removeClass('valid')


$ ->
  new NimbleshopSimply.validateCreditCard()
