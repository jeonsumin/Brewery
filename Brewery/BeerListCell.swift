//
//  BeerListCell.swift
//  Brewery
//
//  Created by Terry on 2022/01/19.
//

import UIKit
import SnapKit
import Kingfisher

class BeerListCell: UITableViewCell {
    
    let beerImageView = UIImageView()
    let titleLabel = UILabel()
    let taglineLabel = UILabel()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        [beerImageView, titleLabel, taglineLabel].forEach {
            contentView.addSubview($0)
        }
        
        beerImageView.contentMode = .scaleAspectFit
        
        titleLabel.font = .systemFont(ofSize: 18, weight: .bold)
        titleLabel.numberOfLines = 2
        
        taglineLabel.font = .systemFont(ofSize: 14, weight: .light)
        taglineLabel.textColor = .systemBlue
        taglineLabel.numberOfLines = 0
        
        beerImageView.snp.makeConstraints{
            $0.centerY.equalToSuperview()
            $0.leading.top.bottom.equalToSuperview().inset(20)
            $0.width.equalTo(80)
            $0.height.equalTo(120)
        }
        
        titleLabel.snp.makeConstraints{
            $0.leading.equalTo(beerImageView.snp.trailing).offset(10)
            $0.bottom.equalTo(beerImageView.snp.centerY)
            $0.trailing.equalToSuperview().inset(20)
        }
        taglineLabel.snp.makeConstraints{
            $0.leading.trailing.equalTo(titleLabel)
            $0.top.equalTo(titleLabel.snp.bottom).offset(5)
        }
    }
    //외부에서 데이터를 받아와서 전달
    func configure(with beer: Beer) {
        let imageURL = URL(string: beer.imageURL ?? "")
        
        beerImageView.kf.setImage(with: imageURL, placeholder: #imageLiteral(resourceName: "beer_icon.png"))
        titleLabel.text = beer.name ?? "이름없는 맥주"
        taglineLabel.text = beer.tegLine
        
        accessoryType = .disclosureIndicator // 악세서리 타입으로 우측 화살표 표현
        selectionStyle = .none //셀 선택시 회색음영 없애기
        
    }
    
    
}
