import Foundation

@testable import Products

enum ProductsJSON {
    static func encodedString(_ capability: Product.Capability) throws -> String? {
        String(bytes: try JSONEncoder().encode(capability), encoding: .utf8)
    }

    static func capabilities(_ json: String) throws -> Set<Product.Capability> {
        try JSONDecoder().decode(Set<Product.Capability>.self, from: Data(json.utf8))
    }
}
