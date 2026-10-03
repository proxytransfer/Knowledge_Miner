# Public Architecture Overview

The product is separated into a public surface and a private execution plane.

```text
Public Site / SaaS UI
        |
Authentication + Billing
        |
Server-side Entitlement
        |
Execution Gateway
        |
Private Knowledge Miner Runtime
        |
Model Endpoint
```

The browser is never the authority for execution permission. Billing, entitlement and execution are distinct states.

The private runtime contains the proprietary mining engine. Public clients receive only the interfaces needed to use the service.
