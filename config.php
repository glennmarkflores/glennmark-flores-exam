<?php

// Configuration
const API_KEY = 'AIzaSyA3UhPvMwV9dtcnBPO_90hBLkaRhMCj_6A';
const CHANNEL_ID = 'UCWJ2lWNubArHWmf3FIHbfcQ';

const DB_HOST = 'localhost';
const DB_NAME = 'youtube_db';
const DB_USERNAME = 'root';
const DB_PASSWORD = '';

const CHANNEL_ENDPOINT = "https://www.googleapis.com/youtube/v3/channels?part=snippet&id=%s&key=%s";
const VIDEOS_ENDPOINT = "https://www.googleapis.com/youtube/v3/search?part=snippet&channelId=%s&order=date&maxResults=100&key=%s";

?>
