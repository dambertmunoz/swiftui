# SwiftUI State Basics Demo

Small SwiftUI project that demonstrates foundational state-management concepts: view composition, bindings, published state, and UIKit app lifecycle integration.

## What This Project Shows

- `ContentView` as the app entry screen.
- `BindingView` for two-way value flow between parent and child views.
- `PublishedView` for observable state updates.
- `ExampleView` for isolated SwiftUI composition.
- SwiftUI embedded in the classic UIKit app lifecycle (`AppDelegate` / `SceneDelegate`).

## Main Modules

| Path | Responsibility |
| --- | --- |
| `SwiftUIDemo/ContentView.swift` | Root SwiftUI screen |
| `SwiftUIDemo/BindingView.swift` | Binding examples |
| `SwiftUIDemo/PublishedView.swift` | Published/observable state examples |
| `SwiftUIDemo/ExampleView.swift` | Additional view composition sample |
| `SwiftUIDemo/SceneDelegate.swift` | SwiftUI hosting setup |

## Running

```sh
open SwiftUIDemo.xcodeproj
```

Select the `SwiftUIDemo` scheme and run on an iOS simulator.

## Technical Notes

- This is a fundamentals repo, not an app architecture template.
- Use it to explain SwiftUI state ownership and data flow.
- In a modern SwiftUI app, the next step would be replacing the legacy scene delegate shell with the `@main App` lifecycle.
