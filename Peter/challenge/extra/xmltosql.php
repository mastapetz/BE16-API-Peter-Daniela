<?php
include_once '../component/db_connect.php';

$affectedRow = 0;
$xml = simplexml_load_file("../xml/songs.xml") or die("Error: Cannot create object");

foreach ($xml->children() as $row) {
    $artist = $row->artist;
    $title = $row->title;
    $genre = $row->genre;
    $country = $row->country;
    $publish_date = $row->publish_date;
    
    $sql = "INSERT INTO songs(artist ,title,genre,country,publish_date) VALUES ('" . $artist . "','" . $title . "','" . $genre . "','" . $country . "','" . $publish_date . "')";
    
    $result = mysqli_query($connect, $sql);
    
    if (! empty($result)) {
        $affectedRow ++;
    } else {
        $error_message = mysqli_error($connect) . "\n";
    }
}
?>

<h2>Insert XML Data to MySql Table Output</h2>
<?php
if ($affectedRow > 0) {
    $message = $affectedRow . " records inserted";
} else {
    $message = "No records inserted";
}

?>