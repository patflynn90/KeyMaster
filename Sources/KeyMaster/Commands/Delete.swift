import ArgumentParser
import Foundation

struct Delete: ParsableCommand {
    static let configuration = CommandConfiguration(
        commandName: "delete",
        abstract: "Delete an existing SSH key by alias."
    )

    @Argument(help: "The alias of the SSH key to delete.")
    var alias: String

    func validate() throws {
        guard !alias.isEmpty else {
            throw ValidationError("Alias cannot be empty.")
        }
    }

    func run() throws {
        print("Deleting SSH key with alias: \(alias)")
    }
}
