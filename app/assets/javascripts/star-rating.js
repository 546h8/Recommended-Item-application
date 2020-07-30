$(document).on('turbolinks:load', function() { 
  $(document).ready(function(){
    $(function raty(){
        $('#star-rating').raty({  
        size: 50 ,
        number: 5 ,
        score: 0 ,
        half: true,
        path: '/assets/',  
        // readOnly: true,  
        half: true,
        scoreName: 'item[rating]'

        // score: function() {  
        //   return $(this).attr('data-rating');
        // };  
      });
    })
  })
})