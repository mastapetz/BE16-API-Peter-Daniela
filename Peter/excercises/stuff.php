<?php
$url = "http://api.serri.codefactory.live/random/";
$client = curl_init($url);
curl_setopt($client,CURLOPT_RETURNTRANSFER,true);
$response = curl_exec($client);
curl_close($client);
// $response = json_encode($first_response);
echo $response;