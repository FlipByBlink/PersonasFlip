import SwiftUI

enum 🗒️StaticInfo {
    static let appName: LocalizedStringResource = "PersonasFlip"
    static var appSubTitle: LocalizedStringResource { "Apple Vision Pro" }
    
    static let appStoreProductURL: URL = .init(string: "https://apps.apple.com/app/id6480587175")!
    static var appStoreUserReviewURL: URL { .init(string: "\(Self.appStoreProductURL)?action=write-review")! }
    
    static var contactAddress: String { "wigged.runaway.0j@icloud.com" }
    
    static let privacyPolicyDescription = """
        2024-04-22
        
        English
        This application don't collect user infomation.
        
        日本語(Japanese)
        このアプリ自身において、ユーザーの情報を一切収集しません。
        """
    
    static let webRepositoryURL: URL = .init(string: "https://github.com/FlipByBlink/PersonasFlip")!
    static let webMirrorRepositoryURL: URL = .init(string: "https://gitlab.com/FlipByBlink/PersonasFlip_Mirror")!

    static let versionInfos: [(version: String, date: String)] = [("1.1", "2025-01-03"),
                                                                  ("1.0.1", "2024-07-24"),
                                                                  ("1.0", "2024-04-22")] //降順。先頭の方が新しい
    
    enum SourceCodeCategory: String, CaseIterable, Identifiable {
        case main,
             AppModel,
             SharePlay,
             SubModel,
             GameView,
             Rest
        var id: Self { self }
        var fileNames: [String] {
            switch self {
                case .main: [
                    "App.swift",
                    "ContentView.swift"
                ]
                case .AppModel: [
                    "🥽AppModel.swift",
                    "🥽game.swift",
                    "🥽sharePlay.swift",
                    "🥽rest.swift",
                    "🥽debug.swift"
                ]
                case .SharePlay: [
                    "👤GroupActivity.swift",
                    "👤Message.swift",
                    "👤PlaySound.swift",
                    "👤Registration.swift"
                ]
                case .SubModel: [
                    "ActivityState.swift",
                    "Pieces.swift",
                    "Piece.swift",
                    "Side.swift",
                    "Mode.swift"
                ]
                case .GameView: [
                    "GameView.swift",
                    "ToolbarsView.swift",
                    "ResultView.swift",
                    "BoardView.swift",
                    "SquareView.swift",
                    "PieceView.swift"
                ]
                case .Rest: [
                    "GuideView.swift",
                    "Size.swift",
                    "SoundFeedback.swift",
                    "SoundFile.swift",
                    "🗒️StaticInfo.swift",
                    "ℹ️AboutApp.swift"
                ]
            }
        }
    }
}
