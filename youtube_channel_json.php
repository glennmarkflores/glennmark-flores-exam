<?php

// Include the config file
require_once 'config.php';

// Connect to the database
function connectToDatabase() {
    try {
        $db = new PDO("mysql:host=" . DB_HOST . ";dbname=" . DB_NAME, DB_USERNAME, DB_PASSWORD);
        $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        return $db;
    } catch (PDOException $e) {
        die("Database connection failed: " . $e->getMessage());
    }
}

// Retrieve YouTube channel information
function getChannelInfo($db) {
    try {
        $channelQuery = "SELECT profile_picture, name, description FROM youtube_channels";
        $channelStmt = $db->query($channelQuery);
        $channelInfo = $channelStmt->fetch(PDO::FETCH_ASSOC);
        return $channelInfo;
    } catch (PDOException $e) {
        die("Error retrieving channel information: " . $e->getMessage());
    }
}

// Retrieve YouTube channel videos
function getVideos($db) {
    try {
        $videosQuery = "SELECT video_link, title, description, thumbnail FROM youtube_channel_videos";
        $videosStmt = $db->query($videosQuery);
        $videos = $videosStmt->fetchAll(PDO::FETCH_ASSOC);
        return $videos;
    } catch (PDOException $e) {
        die("Error retrieving videos: " . $e->getMessage());
    }
}

// Output JSON response
function outputJsonResponse($data) {
    header('Content-Type: application/json');
    echo json_encode($data, JSON_PRETTY_PRINT);
}

// Connect to the database
$db = connectToDatabase();

// Retrieve YouTube channel information
$channelInfo = getChannelInfo($db);

// Retrieve YouTube channel videos
$videos = getVideos($db);

// Combine channel information and videos into an array
$data = [
    'channel' => $channelInfo,
    'videos' => $videos,
];

// Output the JSON response
outputJsonResponse($data);

?>
