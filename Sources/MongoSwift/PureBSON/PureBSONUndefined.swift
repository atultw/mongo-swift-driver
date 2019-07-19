import Foundation

internal struct PureBSONUndefined {}

extension PureBSONUndefined: PureBSONValue {
    internal static var bsonType: BSONType { return .undefined }

    internal var bson: BSON { return .undefined }

    internal func toBSON() -> Data {
        return Data()
    }

    internal init(from data: inout Data) throws {}
}