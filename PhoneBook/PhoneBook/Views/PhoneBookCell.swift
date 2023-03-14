//
//  PhoneBookCell.swift
//  PhoneBook
//
//  Created by 이동현 on 2023/03/14.
//

import UIKit

class PhoneBookCell: UITableViewCell {

    let imgView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let addressLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 10)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let stackView: UIStackView = {
        let sv = UIStackView()
        sv.axis = .vertical
        sv.distribution = .fill
        sv.alignment = .fill
        sv.spacing = 5
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    
    //코드로 할때 여기서 뷰 올려줘야 함
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //super의 init을 호출, style은 원하는거 (보통 디폴트). reuseIdentifier에는 입력받은 파라미터 넣음
        super.init(style: .default, reuseIdentifier: reuseIdentifier)
        setup()
    }
    
    //지정생성자 재정의 할때는 반드시 필수 생성자도 구현해야함 (자동 상속이 안되므로)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup(){
        self.addSubview(imgView)
        self.addSubview(stackView)
        setupStackView()
    }
    
    func setupStackView(){
        stackView.addSubview(nameLabel)
        stackView.addSubview(addressLabel)
    }
    //cell에서 viewDidLoad와 비슷한 역할을 하는 코드
    //만약 스토리보드로 만들때 밑 함수에 원하는 코드 작성. 모두 코드로 할거면 사용 x
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    // MARK: - 셀 오토 레이아웃 잡아주기
    //오토레이아웃 잡아주는 함수
    override func updateConstraints() {
        setConstraints()
        super.updateConstraints()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.imgView.clipsToBounds = true
        //이렇게 해주면 이미지 뷰가 동그라미가 됨. 이미지 뷰의 너비가 결정되는 시점에서 /2 만큼 radius를 줌
        self.imgView.layer.cornerRadius = self.imgView.frame.width / 2
    }
    
    func setConstraints(){
        NSLayoutConstraint.activate([
            imgView.heightAnchor.constraint(equalToConstant: 40),
            imgView.widthAnchor.constraint(equalToConstant: 40),
            imgView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            imgView.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
        
        NSLayoutConstraint.activate([
            nameLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
        
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: imgView.trailingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            stackView.topAnchor.constraint(equalTo: self.imgView.topAnchor),
            stackView.bottomAnchor.constraint(equalTo: self.imgView.bottomAnchor)
        ])
    }
}
