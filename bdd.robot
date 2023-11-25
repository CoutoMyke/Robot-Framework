*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${URL}            https://www.youtube.com/
${SEARCH_BOX}     name:search_query
${SEARCH_BUTTON}  xpath://*[@id="search-icon-legacy"]/yt-icon/yt-icon-shape/icon-shape/div
${FIRST_VIDEO}    xpath://*[@id="video-title"]/yt-formatted-string
${VIDEO_TITLE}    xpath://*[@id="title"]/h1/yt-formatted-string

*** Test Cases ***
Search and Play YouTube Video
    Open Browser    ${URL}    chrome
    Sleep           5s

    # Search for a video
    Input Text      ${SEARCH_BOX}    garota de ipanema
    Click Element   ${SEARCH_BUTTON}

    # Click on the first video
    Sleep           5s
    Click Element   ${FIRST_VIDEO}

    # Assert that the video title is visible
    Sleep           60s
    ${title} =      Get Text    ${VIDEO_TITLE}
    Should Contain  ${title}    Garota De Ipanema

    # Assert that the video is played (you may need to customize this based on your application)
    # For example, you can check for the presence of a "Play" button or other video controls
    ${is_video_playing} =  Run Keyword And Return Status    Page Should Contain Element    xpath://*[contains(@aria-label, 'Pause')]
    Should Be True    ${is_video_playing}

    Close Browser
