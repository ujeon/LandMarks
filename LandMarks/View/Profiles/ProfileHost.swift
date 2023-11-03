//
//  ProfileHost.swift
//  LandMarks
//
//  Created by 우전 on 10/28/23.
//

import SwiftUI

struct ProfileHost: View {
  @Environment(\.editMode) var editMode
  @Environment(ModelData.self) var modelData
  @State private var draftProfile = Profile.default
  
  var body: some View {
    VStack(alignment: .leading, spacing: 20) {
      HStack {
        if editMode?.wrappedValue == .active {
          Button("Cancel", role: .cancel) {
            draftProfile = modelData.profile
            editMode?.animation().wrappedValue = .inactive
          }
        }
        Spacer()
        EditButton()
      }
      
      if editMode?.wrappedValue == .inactive {
        ProfileSummary(profile: modelData.profile)
      } else {
        ProfileEditor(profile: $draftProfile)
          .onAppear {
            draftProfile = modelData.profile
          }
          .onDisappear {
            modelData.profile = draftProfile
          }
      }
    }
    .padding()
  }
}

#Preview {
  ProfileHost()
    .environment(ModelData()) // child 뷰가 environment 속성을 사용하고 있으면 부모에도 environment modifier를 호출해주어야 함
}
