class Solution {
    func subdomainVisits(_ cpdomains: [String]) -> [String] {
        var dict = [String: Int]()
        for item in cpdomains {
            let pair = item.split(separator: " ")
            let (count, domain) = (Int(pair[0])!, String(pair[1]))
            let subdomains = getSubdomains(of: domain)
            for sub in subdomains {
                dict[sub] = (dict[sub] ?? 0) + count
            }
        }
        return dict.map{item in "\(item.value) \(item.key)"
        }
    }
    
    func getSubdomains(of domain: String) -> [String] {
        var subdomains = [String]()
        var subdomain = domain
        subdomains.append(subdomain)
        while let i = subdomain.index(of: ".") {
            subdomain = String(subdomain[subdomain.index(after:i)...])
            subdomains.append(subdomain)
            
        }
        return subdomains
    }
}