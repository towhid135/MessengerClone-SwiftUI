import SwiftUI

struct LoginView: View {
    @State private var email = "towhid"
    @State private var password = "dsldkflskdfllss"
    
    var body: some View {
        NavigationStack{
            VStack{
                Spacer()
                Image(image.messenger)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150,height: 150)
                
                VStack{
                    CustomTextField(variant: .firstTextField,backgroundColor: Color(.systemGray6), text: email)
                    CustomSecureField(variant: .firstSecureField, backgroundColor: Color(.systemGray6), password: password)
                }
                Button {
                    print("pressed")
                } label: {
                    Text("Forgot Password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing,28)
                }
                .frame(maxWidth: .infinity,alignment: .trailing)
                
                CustomButton(variant: .textButton, size: .large, buttonContent: "Login", color: .tokenColor.buttonTheme3){
                    print("pressed")
                }
                .padding(.vertical,20)
                
                HStack{
                    Rectangle().frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
                    Text("OR")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    Rectangle().frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
                    
                }
                .foregroundColor(.gray)
                
                HStack{
                    Image(image.facebook)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20,height: 20)
                    Text("Continue with Facebook")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(.systemBlue))
                }
                
                Spacer()
                
                NavigationLink{
                    Text("Signup")
                } label: {
                    HStack(spacing: 3){
                        Text("Don't have an account?")
                        Text("Sign Up")
                            .fontWeight(.semibold)
                    }
                }
                .padding(.vertical)
                
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
