//
//  RotatedBadgeSymbol.swift
//  LandMarks
//
//  Created by 우전 on 10/23/23.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
  let angle: Angle
  
  var body: some View {
    BadgeSymbol()
      .padding(-60)
      .rotationEffect(angle, anchor: .bottom)
  }
}


#Preview {
  RotatedBadgeSymbol(angle: Angle(degrees: 5))
}
