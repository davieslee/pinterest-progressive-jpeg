
import Foundation

enum Image: String {
  case progressive2 = "http://www.pooyak.com/p/progjpeg/jpegload.cgi?o=1"
  
  var url: URL {
    return URL(string: rawValue)!
  }
}
