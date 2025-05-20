import ArgumentParser
import Foundation

struct Generate: ParsableCommand {
    static let configuration = CommandConfiguration(
        commandName: "generate",
        abstract: "Generate a new SSH key pair and store it securely."
    )

    @Argument(help: "A unique alias for the SSH key (e.g., 'github-personal').")
    var alias: String

    @Option(name: .long, help: "The hostname for the SSH config (e.g., 'github.com').")
    var hostname: String?

    @Option(name: .long, help: "The user for the SSH config (e.g., 'git').")
    var user: String?

    @Flag(name: .long, help: "Skip storing the key in macOS Keychain.")
    var noKeychain: Bool = false

    func validate() throws {
        guard !alias.isEmpty else {
            throw ValidationError("Alias cannot be empty.")
        }
        // Additional validation can be added here as needed.
    }

    func run() throws {
        print("Generating SSH key with alias: \(alias)")
        if let hostname = hostname {
            print("Hostname: \(hostname)")
        }
        if let user = user {
            print("User: \(user)")
        }
        if noKeychain {
            print("Key will not be stored in Keychain.")
        }
    }
}
