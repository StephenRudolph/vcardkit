import VComponentKit

public struct VCardAddress: VPropertyEncodable {
    /*
     Per RFC 6350: "Experience with vCard 3 has shown that the first two components
     (post office box and extended address) are plagued with many
     interoperability issues.  To ensure maximal interoperability,
     their values SHOULD be empty."
     */
    public var postOfficeBox: String
    public var extendedAddress: String
    public var streetAddress: String
    public var locality: String // e.g. city
    public var region: String // e.g. state
    public var postalCode: String
    public var country: String

    public var vEncoded: String {
        [postOfficeBox, extendedAddress, streetAddress, locality, region, postalCode, country].joined(separator: ";")
    }

    public init(
        streetAddress: String = "",
        locality: String = "", // e.g. city
        region: String = "", // e.g. state
        postalCode: String = "",
        country: String = ""
    ) {
        self.postOfficeBox = ""
        self.extendedAddress = ""
        self.streetAddress = streetAddress
        self.locality = locality
        self.region = region
        self.postalCode = postalCode
        self.country = country
    }
}
