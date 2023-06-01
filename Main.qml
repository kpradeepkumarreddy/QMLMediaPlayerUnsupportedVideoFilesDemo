import QtQuick
import QtQuick.Window
import QtMultimedia

Window {
    width: 640
    height: 480
    visible: true
    MediaPlayer {
       id: player
       audioOutput: AudioOutput{}
       videoOutput: videoOutput
       source: "qrc:/videos/sample.MOV"
       onErrorOccurred:console.debug("error = ", error, ", errorString = ", errorString)
       onPlaybackStateChanged: console.debug("playbackstate = ", playbackState)
    }
    VideoOutput{
       id:videoOutput
       anchors.fill: parent
       fillMode: VideoOutput.PreserveAspectCrop
    }
    Component.onCompleted: player.play()
}
