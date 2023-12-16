//
// LilySwift Library Project
//
// Copyright (c) Watanabe-Denki, Inc. and Kengo Watanabe.
//   https://wdkk.co.jp/
//
// This software is released under the MIT License.
//   https://opensource.org/licenses/mit-license.php
//

import SwiftUI
import LilySwiftForPlayground

struct ContentView: View
{
    let device = MTLCreateSystemDefaultDevice()!
    
    var body: some View {
        VStack {
            PG2D.PGScreenView( device:device,
            design: { screen in
                screen.clearColor = .darkGrey
            },
            update: { screen in
                for touch in screen.touches {
                    for _ in 0 ..< 8 {
                        let speed = (2.0...4.0).randomize
                        let rad  = (0.0...2.0 * Double.pi).randomize
                        
                        PGAddBlurryCircle()
                        .color( LLColor( 0.4, 0.6, 0.95, 1.0 ) )
                        .position( touch.xy )
                        .deltaPosition( 
                            dx: speed * cos( rad ),
                            dy: speed * sin( rad ) 
                        )
                        .scale(
                            width:(5.0...40.0).randomize,
                            height:(5.0...40.0).randomize
                        )
                        .angle( .random )
                        .deltaAngle( degrees: (-2.0...2.0).randomize )
                        .life( 1.0 )
                        .deltaLife( -0.016 )
                        .alpha( 1.0 )
                        .deltaAlpha( -0.016 )
                    }
                }
            })
        }
    }
}
