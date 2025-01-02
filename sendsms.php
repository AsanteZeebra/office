<?php

require ('Zenoph\Notify\AutoLoader.php');
use Zenoph\Notify\Enums\AuthModel;
use Zenoph\Notify\Enums\TextMessageType;
use Zenoph\Notify\Enums\RequestHandshake;
use Zenoph\Notify\Request\SMSRequest;
use Zenoph\Notify\Request\RequestException;

include_once('connect.php');



try {

    $telephone = mysqli_real_escape_string($conn,$_POST['number']);
    $body = mysqli_real_escape_string($conn,$_POST['body']);
   
    // set host
    SMSRequest::setHost("api.smsonlinegh.com");

    // By default requests will be sent using SSL/TLS with https connection.
    // If you encounter SSL/TLS warning or error, your machine may be using unsupported
    // SSL/TLS version. In that case uncomment the following line to set it to false
    SMSRequest::useSecureConnection(false);

    // Initialise request object
    $sr = new SMSRequest();

    // set authentication details.
    $sr->setAuthModel(AuthModel::API_KEY);
    $sr->setAuthApiKey("fe979452a360a508a6a934381cea9a028b2197ad4af0b221145b106c9bc5dad1");

    // message properties
    $sr->setMessage("$body");
    $sr->setMessageType(TextMessageType::TEXT);
    $sr->setSender("Zeebra Tech");     // should be registered

    // add message destination
    $sr->addDestination("$telephone");

    // send message
    $sr->submit();
    
    echo "MESSAGE SENT SUCCESSFULLY";
}

catch (\Exception $ex){
    // output error message
    die ("Error: " . $ex->getMessage());
}



?>