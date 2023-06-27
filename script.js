new Vue({
    el: "#app",
    data: {
        channel: {},
        videos: [],
        searchQuery: ""
    },
    computed: {
        filteredVideos() {
            if (!this.searchQuery) {
                return this.videos;
            }
            const query = this.searchQuery.toLowerCase();
            return this.videos.filter(video => {
                const title = video.title.toLowerCase();
                const description = video.description.toLowerCase();
                return title.includes(query) || description.includes(query);
            });
        }
    },
    mounted() {
        // Fetch the JSON feed from youtube_channel_json.php
        fetch('youtube_channel_json.php')
            .then(response => response.json())
            .then(data => {
                this.channel = data.channel;
                this.videos = data.videos;
            })
            .catch(error => {
                console.error('Error:', error);
            });
    }
});
