

import Foundation
    
class ApiCall
{
    
      //MARK:-  ApiCall
    func getData(completion: @escaping(EmplyeeResponse) -> Void)
    {
        
        let url = URL(string: Constants.url)
        var request=URLRequest(url: url!)
        request.httpMethod = "GET"
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            guard let  data = data  else {return}
            do {
                let result = try JSONDecoder().decode(EmplyeeResponse .self, from: data)
                completion(result)
            }
            catch{  
                let error = error
                print(error.localizedDescription)
            }
            
        }
        
         task.resume()
    }
}
