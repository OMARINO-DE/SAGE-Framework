# Contributing to SAGE Framework

Thank you for your interest in contributing to the SAGE Framework (Senior-Adaptive Guided Ecosystem)! This document provides guidelines for contributing to the project.

## Code of Conduct

This project adheres to a Code of Conduct. By participating, you are expected to uphold this code. Please read [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md) before contributing.

## How Can I Contribute?

### Reporting Bugs

Before creating bug reports, please check existing issues to avoid duplicates. When creating a bug report, include:

* A clear and descriptive title
* Detailed steps to reproduce the problem
* Expected behavior vs. actual behavior
* Screenshots or examples if applicable
* Environment details (OS, browser, assistive technology if relevant)

### Suggesting Enhancements

Enhancement suggestions are welcome! Please provide:

* A clear and descriptive title
* Detailed description of the proposed functionality
* Rationale: why this enhancement would be useful
* Examples of how it would work
* Consideration of SAGE's four pillars

### Pull Requests

1. **Fork the repository** and create your branch from `main`
2. **Follow the trilingual requirement**: All documentation must be provided in English, German, and Arabic
3. **Maintain consistency**: Use the terminology defined in the glossary
4. **Test your changes**: Ensure specifications are auditable and testable
5. **Update documentation**: If you add requirements, update relevant checklists and examples
6. **Write clear commit messages**: Follow the conventional commits format
7. **Submit your pull request**: Provide a clear description of changes

## Trilingual Documentation Requirements

**Every human-readable document MUST be provided in three languages:**

- English (EN) – canonical version
- German (DE)
- Arabic (AR) – with RTL awareness

Use the multi-file pattern for long documents:
- `filename.en.md`
- `filename.de.md`
- `filename.ar.md`

For Arabic files, always include this note at the top:

```markdown
> ملاحظة: هذا المستند مكتوب بالعربية وقد يُعرض من اليمين إلى اليسار حسب بيئة العرض.
```

## Specification Quality Standards

When contributing to framework specifications, ensure:

1. **Requirement ID**: Every requirement has a unique identifier (e.g., S1, A3)
2. **Clear Statement**: Requirement is specific and unambiguous
3. **Rationale**: Why this requirement exists
4. **Metrics**: How to measure compliance
5. **Test Procedure**: How to verify the requirement
6. **Compliance Level**: Minimum / Recommended / Strong
7. **Anti-patterns**: What NOT to do

Avoid vague language. Everything must be auditable and testable.

## Terminology Consistency

Use these exact terms across all languages:

- **SAGE** – Senior-Adaptive Guided Ecosystem
- **Pillars**:
  - Safe Simplicity
  - Assisted Autonomy
  - Guided Interaction
  - Emotional Trust Layer

Check the [glossary](glossary/) for complete terminology.

## Git Workflow

1. Create a feature branch: `git checkout -b feature/your-feature-name`
2. Make your changes
3. Commit with clear messages: `git commit -m "docs: add German translation for Safe Simplicity"`
4. Push to your fork: `git push origin feature/your-feature-name`
5. Open a Pull Request

### Commit Message Format

Follow conventional commits:

- `feat:` New feature
- `fix:` Bug fix
- `docs:` Documentation changes
- `chore:` Maintenance tasks
- `test:` Adding or updating tests

## Development Setup

1. Fork and clone the repository
2. Ensure you have a text editor with RTL support for Arabic
3. Review existing documentation structure
4. Check the glossary for consistent terminology

## Review Process

1. All pull requests require review by at least one maintainer
2. Reviewers will check:
   - Trilingual completeness
   - Terminology consistency
   - Specification quality
   - Compliance with SAGE principles
3. Address review feedback
4. Once approved, your PR will be merged

## Community

- **GitHub Discussions**: For questions and general discussion
- **Issues**: For bugs and feature requests
- **Pull Requests**: For contributions

## Recognition

Contributors will be recognized in:
- The repository's contributors page
- The GOVERNANCE.md file for significant contributions
- Release notes for substantial improvements

## Questions?

If you have questions not covered here, please:
- Open a GitHub Discussion
- Review the [GOVERNANCE.md](governance/GOVERNANCE.en.md) file
- Check the documentation index

Thank you for contributing to making digital experiences better for senior users worldwide!
