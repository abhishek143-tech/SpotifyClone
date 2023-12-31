//
//  AuthManager.swift
//  Spotify
//
//  Created by Abhishek Dilip Dhok on 06/08/23.
//

import Foundation

final class AuthManager {
    static let shared = AuthManager()

    struct Constants {
        static let clientID = "3e184ebbe38b456d90fd365fe53da38d"
        static let clientSecret = "084ecb970fde4661bd67d3199c1fc2c0"
    }

    private init() {}

    public var signInURL: URL? {
        let scopes = "user-read-private"
        let redirectURI = "http://localhost:8888/callback"
        let base = "https://accounts.spotify.com/authorize"
        let string = "\(base)?response_type=code&client_id=\(Constants.clientID)&scope=\(scopes)&redirect_uri=\(redirectURI)&show_dialog=TRUE"
        return URL(string: string)
    }

    var isSignedIn: Bool {
        return false
    }

    private var accessToken: String? {
        return nil
    }

    private var refreshToken: String? {
        return nil
    }

    private var tokenExpirationDate: Date? {
        return nil
    }

    private var shouldRefreshToken: Bool {
        return false
    }
}
