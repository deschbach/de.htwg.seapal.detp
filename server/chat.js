$(function() {
	updateChat('Connecting...');
	Server = new FancyWebSocket('ws://127.0.0.1:9300');

	// watch textarea for release of key press
	 $('#send-message-box').keyup(function(e) {	
	 					 
		  if (e.keyCode == 13) { //Enter is pressed
            var text = $(this).val();
			sendChat( text );

			$(this).val('');
		}
	});

	//Let the user know we're connected
	Server.bind('open', function() {
		updateChat( "Connected." );
	});

	//OH NO! Disconnection occurred.
	Server.bind('close', function( data ) {
		updateChat( "Disconnected." );
	});

	//Log any messages sent from server
	Server.bind('message', function( message ) {
		updateChat( message );
	});

	Server.connect();
});


var Server;

function updateChat( message ) {
	$('#chat-area').append($("<p>"+ message +"</p>"));
	document.getElementById('chat-area').scrollTop = document.getElementById('chat-area').scrollHeight;
}

function sendChat( message ) {
	Server.send( 'message', message );
}

