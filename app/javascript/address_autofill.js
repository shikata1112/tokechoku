
console.log('autofill');

$(function() {
  return $('#vendor_postcode').jpostal({
    postcode: ['#vendor_postcode'],
    address: {
      '#vendor_prefecture_code': '%3',
      '#vendor_city': '%4%5'
    }
  });
});