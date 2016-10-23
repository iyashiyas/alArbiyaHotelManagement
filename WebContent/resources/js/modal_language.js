

 var frm;  
			$('#submitBtn').click(function() {
				$('#langName').text($('#languagename').val());
      frm=$('#language_edit');
			});

			$('#submit').click(function() {
				alert('submitting');
			               $.ajax({
				            type: frm.attr('method'),
				            url: frm.attr('action'),
				            data: frm.serialize(),
				            success: function (data) {
				            	
				                alert('ok');
				            }
				        });
 
				    }); 

 

/*	
(function($) {
			  $.fn.autosubmit = function() {
			    this.submit(function(event) {
			      event.preventDefault();
			      var form = $(this);
			      $.ajax({
			        type: form.attr('method'),
			        url: form.attr('action'),
			        data: form.serialize()
			      }).done(function(data) {
			        // Optionally alert the user of success here...
			      }).fail(function(data) {
			        // Optionally alert the user of an error here...
			      });
			    });
			    return this;
			  }
			})
		
//<![CDATA[
		$(window).load(function() {
			$('button[name="remove_levels"]').on('click', function(e) {
		  
				var $form = $(this).parent('form');
				 
			    e.preventDefault();
				$('#confirm').modal({
					backdrop : 'static',
					keyboard : false
				}).one('click', '#accept', function(e) {
					 $('form[data-autosubmit]').autosubmit();
			   
			});
		});
		});//]]>
		
		*/
		
		
		