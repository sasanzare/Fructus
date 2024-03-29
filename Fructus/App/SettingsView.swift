//
//  SettingsView.swift
//  Fructus
//
//  Created by sasan on 7/3/22.
//

import SwiftUI

struct SettingsView: View {
    //MARK: -PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    //MARK: - BODY
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 20){
                    //MARK: - SECTION 1
                    
                    GroupBox(
                        label:
                          SettingsLabelView(labelText: "میوه‌ها", labelImage: "info.circle")
                    ){
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10){
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("بیشتر میوه ها به طور طبیعی چربی، سدیم و کالری کمی دارند. هیچکدام کلسترول ندارند میوه ها منابع بسیاری از مواد مغذی ضروری از جمله پتاسیم، فیبر غذایی، ویتامین ها و بسیاری موارد دیگر هستند.")
                                .font(.footnote)
                        }
                       
                    }
                    
                    //MARK: - SECTION 2
                    
                GroupBox(
                    label:
                        SettingsLabelView(labelText: "سفارشی سازی", labelImage: "paintbrush")
                ){
                    Divider().padding(.vertical, 4)
                    Text("در صورت تمایل می توانید با جابجایی سوئیچ موجود در این کادر، برنامه را مجددا راه اندازی کنید. به این ترتیب، فرآیند ورود شروع می شود و دوباره صفحه خوش آمدگویی را مشاهده خواهید کرد.")
                        .padding(.vertical, 8)
                        .frame(minHeight: 60)
                        .layoutPriority(1)
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                    
                    Toggle(isOn: $isOnboarding){
                        if isOnboarding{
                            Text("ریست")
                                .fontWeight(.bold)
                                .foregroundColor(Color.green)
                        }else{
                            Text("ریست")
                                .fontWeight(.bold)
                                .foregroundColor(Color.green)
                        }
                       
                            
                    }
                    .padding()
                    .background(
                        Color(UIColor.tertiarySystemBackground)
                            .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                    )
                }
                    
                    
                    //MARK: - SECTION 3
                    
                    GroupBox(
                        label: SettingsLabelView(labelText: "اپلیکیشن", labelImage: "apps.iphone")
                    ){
                        SettingsRowView(name: "توسعه دهنده",content: "ساسان زارع")
                        SettingsRowView(name: "طراح",content: "سپهر یونسی")
                        SettingsRowView(name: "Compatibility",content: "IOS 14")
                        SettingsRowView(name: "وب سایت",linkLabel: "ساسان زارع",linkDestination: "sasanzare.ir")
                        SettingsRowView(name: "اینستاگرام",linkLabel: "@sasanzare.ir",linkDestination: "instagram.com/sasanzare.ir")
                        SettingsRowView(name: "SwiftUI",content: "2.0")
                        SettingsRowView(name: "نسخه",content: "0.0.1")  
                    }
                       
                }
                .navigationBarTitle(Text("تنظیمات"), displayMode: .large)
                .navigationBarItems( trailing:
                    Button(action:{
                    presentationMode.wrappedValue.dismiss()
                }){
                    Image(systemName: "xmark")
                }
                )
                .padding()
            }
        }.environment(\.layoutDirection, .rightToLeft)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}

