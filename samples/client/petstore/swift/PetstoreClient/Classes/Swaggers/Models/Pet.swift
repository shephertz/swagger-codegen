//
// Pet.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class Pet: JSONEncodable {

    public enum Status: String { 
        case Available = "available"
        case Pending = "pending"
        case Sold = "sold"
    }
    
    public var id: Int?
    public var category: Category?
    public var name: String?
    public var photoUrls: [String]?
    public var tags: [Tag]?
    /** pet status in the store */
    public var status: Status?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["category"] = self.category?.encodeToJSON()
        nillableDictionary["name"] = self.name
        nillableDictionary["photoUrls"] = self.photoUrls?.encodeToJSON()
        nillableDictionary["tags"] = self.tags?.encodeToJSON()
        nillableDictionary["status"] = self.status?.rawValue
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
