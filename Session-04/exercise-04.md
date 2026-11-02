## Exercise 4: Cordova Architecture Diagram

```mermaid
graph TD
    subgraph Mobile Device
        A[Web View] --> B[HTML, CSS, JavaScript]
        A --> C[Cordova Plugins]
        C --> D[Native APIs]
        D --> E[Operating System]
    end
    
    B --> F[User Interface]
    F --> A
