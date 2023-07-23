//
//  ImageTextRowComp.swift
//  MessengerClone
//
//  Created by Bayshore Communication on 18/7/23.
//

import SwiftUI

struct SystemImageTextRowComp: View {
    private var imageName:String
    private var imageSize:CGFloat
    private var imageBackgroundColor:Color
    private var text:String
    var body: some View {
        VStack{
            HStack{
                Image(systemName: imageName)
                    .font(Font.system(size: imageSize))
                    .foregroundColor(imageBackgroundColor)
                Text(text)
                    .font(Font.system(size: imageSize * Constants.textFontSizeScaleFactor))
                    .fontWeight(.semibold)
                    .lineLimit(1)
                    .frame(width: UIScreen.main.bounds.width * Constants.textWidthScaleFactor,alignment: .leading)
                Spacer()
            }
            

        }
    }
    
    init(imageName:String, imageSize:CGFloat,imageBackgroundColor:Color, text:String){
        self.imageName = imageName
        self.imageSize = imageSize
        self.imageBackgroundColor = imageBackgroundColor
        self.text = text
    }
    
    private struct Constants {
        static let textWidthScaleFactor = 0.5
        static let textFontSizeScaleFactor = 0.5
    }
}

struct SystemImageTextRowComp_Previews: PreviewProvider {
    static var previews: some View {
        SystemImageTextRowComp(imageName: "person.circle.fill", imageSize: 30, imageBackgroundColor: Color(.red), text: "Towhidul Islam")
    }
}
