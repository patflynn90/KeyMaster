import ArgumentParser
import Foundation

@main
struct KeyMaster: ParsableCommand {
    static let configuration = CommandConfiguration(
        commandName: "km",
        abstract: "A macOS command-line SSH key manager",
        version: "0.0.1",
        subcommands: []
    )

    func run() throws {
        print("Welcome to KeyMaster!")
    }
}
