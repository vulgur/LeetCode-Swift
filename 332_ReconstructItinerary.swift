class Solution {
    var flights = [String: [String]]()
    
    func findItinerary(_ tickets: [[String]]) -> [String] {
        for item in tickets {
            if flights[item[0]] == nil {
                flights[item[0]] = [item[1]]
            } else {
                flights[item[0]]!.append(item[1])
            }
        }
        for (key,value) in flights {
            flights[key] = value.sorted()
        }
        var itinerary = [String]()
        dfs("JFK", &itinerary)
        
        return itinerary.reversed()
    }
    
    func dfs(_ airport: String, _ itinerary: inout [String]) {
        while var arrivals = flights[airport] {
            
            if !arrivals.isEmpty {
                print(arrivals)
                let next = arrivals[0]
                flights[airport] = Array(arrivals.dropFirst())
                dfs(next, &itinerary)
            } else {
                break
            }
        }
        itinerary.append(airport)
    }
}
