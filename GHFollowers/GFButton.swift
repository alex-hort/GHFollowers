//
//  GFButton.swift
//  GHFollowers
//
//  Created by Alexis Horteales Espinosa on 21/11/25.
//

import UIKit

class GFButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
        /// Calls the configure() method to set up the button’s appearance.
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        /// This initializer is required when using Storyboards,
        /// but here it's disabled because the button will only be created in code.
    }

    init(backgroundColor: UIColor, title: String){
        super.init(frame: .zero)
        /// Creates the button with no initial size (will use Auto Layout).
        self.backgroundColor = backgroundColor
        /// Sets the button’s background color to the one passed in.
        self.setTitle(title, for: .normal)
        /// Sets the button’s title text.
        configure()
        /// Calls the configure() method to set up the backgroundColor
    }

    private func configure(){
        layer.cornerRadius = 10
        /// Rounds the corners of the button.
        titleLabel?.textColor = .white
        /// Makes the text color white.
        titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline)
        /// Sets the text font to the system "headline" style.
        translatesAutoresizingMaskIntoConstraints = false
        /// Enables Auto Layout instead of automatic resizing.
    }


}
