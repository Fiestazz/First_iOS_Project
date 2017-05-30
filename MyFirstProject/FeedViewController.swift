//
//  FeedViewController.swift
//  MyFirstProject
//
//  Created by std124 on 5/28/17.
//  Copyright © 2017 Fiat Natthapong. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var newsArray: [News] = []
    override func viewDidLoad() {
    super.viewDidLoad()
    self.setupTableView()
    self.setupTableViewDummyData()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /**
     Install TableView
    */
    func setupTableView(){
        self.tableView.register(UINib(nibName: "FeedTableViewCell", bundle: nil), forCellReuseIdentifier: "FeedTableViewCell")
    }
    
    /**
    Create Data TableView
     */
func setupTableViewDummyData(){
    var news:News = News(title: "iOS", description: "Error let's stop doing this!", iconImage: #imageLiteral(resourceName: "cheese_flat"), author: "LoongToo", view: 2, createDate: "29/05/60", category: "Technology")
    var news2:News = News(title: "Android", description: "555555", iconImage: #imageLiteral(resourceName: "cat"), author: "Epoo", view: 9999, createDate: "29/05/60", category: "Political")
    var news3:News = News(title: "Android", description: "555555", iconImage: #imageLiteral(resourceName: "cat"), author: "Epoo", view: 9999, createDate: "29/05/60", category: "Political")
    var news4:News = News(title: "Android", description: "555555", iconImage: #imageLiteral(resourceName: "cat"), author: "Epoo", view: 9999, createDate: "29/05/60", category: "Political")
    var news5:News = News(title: "Android", description: "555555", iconImage: #imageLiteral(resourceName: "cat"), author: "Epoo", view: 9999, createDate: "29/05/60", category: "Political")
    var news6:News = News(title: "Android", description: "555555", iconImage: #imageLiteral(resourceName: "cat"), author: "Epoo", view: 9999, createDate: "29/05/60", category: "Political")
    newsArray.append(news)
    newsArray.append(news2)
    newsArray.append(news3)
    newsArray.append(news4)
    newsArray.append(news5)
    newsArray.append(news6)
}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension FeedViewController: UITableViewDataSource, UITableViewDelegate{
    
    func tableView( _ tableView: UITableView, heightForRowAt IndexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func numberOfSections(in tableView:UITableView) -> Int {
        return 1
    }
    
    func tableView( _ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsArray.count
    }
    
    func tableView( _ tableView: UITableView, cellForRowAt IndexPath: IndexPath) -> UITableViewCell {
        let rowNo = IndexPath.row
        let cell = tableView.dequeueReusableCell(withIdentifier: "FeedTableViewCell", for: IndexPath) as! FeedTableViewCell
        var news:News = newsArray[rowNo]
        cell.setupUI(news: news)
        return cell
    }
}
