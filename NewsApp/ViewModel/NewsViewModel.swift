//
//  NewsViewModel.swift
//  NewsApp
//
//  Created by Hasan Uysal on 12.09.2022.
//

import Foundation

struct NewsTableViewModel {
    
    let newsList : [News]
    
    func numberOfRowInSection() -> Int{
        
        return newsList.count
        
    }
    
    func newsAtIndexPath(_ index: Int) -> NewsViewModel {
        let news =  self.newsList[index]
        return NewsViewModel(news: news)
    }
    
}

struct NewsViewModel {
    
    let news : News

    var title : String {
        return self.news.title
    }
    
    var story : String {
        return self.news.story
    }
}
