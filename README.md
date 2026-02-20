
# AKS DevOps Platform – Senior-Level Implementation

Enterprise-style AKS provisioning with:

- Terraform (modular architecture)
- Azure AKS
- GitHub Actions (OIDC authentication)
- Plan artifact promotion (no re-planning during apply)
- Dev → QA → Prod sequential promotion
- Drift detection
- Monitoring integration (Log Analytics)

---

## CI/CD Strategy

Pull Request:
- terraform fmt check
- terraform validate
- terraform plan
- Upload plan artifact

Manual Apply Workflow:
- Download reviewed plan artifact
- Apply exact plan file
- Sequential promotion: Dev → QA → Prod

This prevents configuration drift between plan and apply.
