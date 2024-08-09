import UIKit

class HomeViewController: UITableViewController {
    var dataSet: [[HomeItems]]
    var sectionHeaders: [String]
    
    init() {
        dataSet = [
            [.basicMovement, .scale],
            [.pathFollowing, .pathFollowingWithCurve],
            [.paginationPathFollowing, .paginationPathFollowingScale],
            [.morph],
            [.star]
        ]
        sectionHeaders = ["Basics", "Path Following", "Pagination", "Morph", ""]
        super.init(style: .insetGrouped)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Galactic Odyssey 💫"
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "homeCell")
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        dataSet.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        dataSet[section].count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "homeCell", for: indexPath)
        if (cell == nil) {
            cell = UITableViewCell(style: .default, reuseIdentifier: "homeCell")
        }
        cell.accessoryType = .disclosureIndicator
        cell.textLabel?.text = dataSet[indexPath.section][indexPath.row].title()
        cell.selectionStyle = .none
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section < sectionHeaders.count {
            let title = sectionHeaders[section]
            return title.isEmpty ? nil : title
        } else { return nil }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = dataSet[indexPath.section][indexPath.row].viewController()
        vc.view.clipsToBounds = true
        navigationController?.pushViewController(vc, animated: true)
    }
}

enum HomeItems {
    case basicMovement
    case scale
    case pathFollowing
    case pathFollowingWithCurve
    case paginationPathFollowing
    case paginationPathFollowingScale
    case morph
    case star
}


extension HomeItems {
    func title() -> String {
        switch self {
        case .basicMovement: return "Movement"
        case .scale: return "Scale"
        case .pathFollowing: return "Path Following"
        case .pathFollowingWithCurve: return "Path Following 2"
        case .paginationPathFollowing: return "Path Following"
        case .paginationPathFollowingScale: return "Scale"
        case .morph: return "Morph"
        case .star: return "Star"
        }
    }
}

extension HomeItems {
    func viewController() -> UIViewController {
        switch self {
        case .basicMovement: return BasicMovementViewController()
        case .scale: return ScaleViewController()
        case .pathFollowing: return PathFollowingViewController()
        case .pathFollowingWithCurve: return PathFollowingWithCurveViewController()
        case .paginationPathFollowing: return PaginationViewController()
        case .paginationPathFollowingScale: return PaginationScaleViewController()
        case .morph: return MorphViewController()
        case .star: return StarViewController()
        }
    }
}
