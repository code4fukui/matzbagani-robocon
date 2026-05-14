# matzbagani-robocon

> 日本語のREADMEはこちらです: [README.ja.md](README.ja.md)

A simple HTML/JS video player with smooth reverse playback, designed for analyzing robotics competition footage.

This player achieves seamless forward and reverse playback by using two separate video files: the original and a pre-rendered reversed version. It synchronizes their playback times to create the illusion of a single, reversible video.

## Demo

[Okaki Reverse Video Player - 3rd Matz Crab Robocon](https://code4fukui.github.io/matzbagani-robocon/)

## Features

-   **Smooth Reverse Playback:** Instantly switch between forward and reverse play.
-   **Synchronized Scrubbing:** Drag the timeline slider to preview frames in either direction.
-   **Simple Architecture:** Works with static files, no server-side processing required.
-   **Standalone:** A single `index.html` file with self-contained CSS and JavaScript.

## Setup and Usage

### 1. Pre-process Your Video

This player requires a reversed copy of your video file. Use one of the provided shell scripts to generate it.

-   **For a standard reverse video:**
    ```sh
    ./movreverse.sh my_video.mp4
    ```
    This will create `my_video.mp4.rev.mp4`.

-   **To also scale the video to 540p height:**
    ```sh
    ./movreversemp4.sh my_video.mp4
    ```
    This will create `my_video.mp4.rev.mp4`.

**Note:** Both scripts require `ffmpeg` to be installed.

### 2. Update `index.html`

Edit the `<video>` tags in `index.html` to point to your files.

```html
<!-- Before -->
<video id=video src="./matz.mp4"></video>
<video id=video_rev src="./matz.rev.mp4"></video>

<!-- After (example) -->
<video id=video src="./my_video.mp4"></video>
<video id=video_rev src="./my_video.mp4.rev.mp4"></video>
```

### 3. Open in Browser

Open the modified `index.html` file in your web browser to use the player.

## Player Controls

-   **▶️ PLAY**: Plays the video forward.
-   **⏹️ STOP**: Pauses playback.
-   **◀️ REVERSE**: Plays the video in reverse.
-   **Timeline Slider**: Drag to scrub through the video.

## License

MIT License