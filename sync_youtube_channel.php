<?php
// Include the config file
require_once 'config.php';

// Fetch YouTube channel data
function getChannelData($apiKey, $channelId) {
    $channelUrl = sprintf(CHANNEL_ENDPOINT, $channelId, $apiKey);
    $channelData = json_decode(file_get_contents($channelUrl), true);
    return $channelData;
}

// Fetch YouTube channel videos data
function getVideosData($apiKey, $channelId) {
    $videosUrl = sprintf(VIDEOS_ENDPOINT, $channelId, $apiKey);
    $videosData = json_decode(file_get_contents($videosUrl), true);
    return $videosData;
}

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

// Insert channel data into the database
function insertChannelData($db, $channelData) {
    try {
        $insertChannelQuery = "INSERT INTO youtube_channels (profile_picture, name, description)
                               VALUES (:profile_picture, :name, :description)";
        $insertChannelStmt = $db->prepare($insertChannelQuery);
        $insertChannelStmt->execute([
            'profile_picture' => $channelData['items'][0]['snippet']['thumbnails']['default']['url'],
            'name' => $channelData['items'][0]['snippet']['title'],
            'description' => $channelData['items'][0]['snippet']['description']
        ]);
    } catch (PDOException $e) {
        die("Error inserting channel information: " . $e->getMessage());
    }
}

// Insert video data into the database
function insertVideoData($db, $video) {
    try {
        $insertVideoQuery = "INSERT INTO youtube_channel_videos (video_link, title, description, thumbnail)
                             VALUES (:video_link, :title, :description, :thumbnail)";
        $insertVideoStmt = $db->prepare($insertVideoQuery);
        $insertVideoStmt->execute([
            'video_link' => "https://www.youtube.com/watch?v=" . $video['id']['videoId'],
            'title' => $video['snippet']['title'],
            'description' => $video['snippet']['description'],
            'thumbnail' => $video['snippet']['thumbnails']['default']['url']
        ]);
    } catch (PDOException $e) {
        die("Error inserting videos: " . $e->getMessage());
    }
}

// Fetch YouTube channel data
$channelData = getChannelData(API_KEY, CHANNEL_ID);

// Check if the channel data is available
if (!isset($channelData['items'][0]['snippet'])) {
    die("Failed to retrieve channel information.");
}

// Connect to the database
$db = connectToDatabase();

// Save YouTube channel information to the database
insertChannelData($db, $channelData);

// Fetch YouTube channel videos data
$videosData = getVideosData(API_KEY, CHANNEL_ID);

// Check if the videos data is available
if (!isset($videosData['items'])) {
    die("Failed to retrieve videos.");
}

// Save YouTube channel videos to the database
foreach ($videosData['items'] as $video) {
    insertVideoData($db, $video);
}

echo "Sync completed successfully.";

?>
