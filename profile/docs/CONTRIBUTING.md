# Contributing to SIX Bank Platform

Welcome! 👋

Thank you for your interest in contributing to the **SIX Bank Platform**. Whether you’re fixing a bug, proposing an enhancement, improving documentation, or suggesting an architectural improvement, your input is valued.

---

## 📌 Code of Conduct

By participating in this project, you agree to abide by our [Code of Conduct](CODE_OF_CONDUCT.md). Please act respectfully and professionally in all project spaces.

---

## 🧭 About the Project

The SIX Bank Platform is a modular, event-driven platform for monitoring and mitigating FX risk in real-time, integrating technologies like Kafka, Apache Flink, Spring Boot, and time-series databases.

---

## 🚀 Getting Started

Before contributing:

1. **Fork** the repository and clone it locally.
2. Create a feature branch:  
   ```bash
   git checkout -b feature/your-feature-name


3. Install required dependencies for your module (see the README).
4. Make your changes with proper tests and documentation.

---

## 💡 Ways to Contribute

* 🔧 Fix bugs
* ✨ Add new features
* 🧪 Improve or add unit/integration tests
* 🧼 Refactor code or improve performance
* 🖋️ Update or improve documentation
* 🛠️ Suggest or contribute to architectural improvements

---

## ✅ Coding Guidelines

* Follow existing code style and naming conventions
* Write unit/integration tests for new logic
* Format your code with standard tools:

    * Java: Follow Spring Boot conventions
    * Kotlin: Use `ktlint`
    * Frontend: Use Prettier
* Document your functions/classes where necessary

---

## 📂 Project Structure

Contributions should be placed in their respective modules:

```
six-bank-platform/
├──/
└── docs/
```

---

## 🧪 Testing

Before submitting a pull request:

* Ensure all unit and integration tests pass
* Run `docker-compose up --build` (if applicable) to verify system integration

---

## 📦 Commit Message Format

Use [Conventional Commits](https://www.conventionalcommits.org/):

```
type(scope): subject

Examples:
feat(risk-service): add VaR calculation endpoint
fix(alert-engine): resolve null pointer in alert generator
docs(readme): update usage instructions
```

---

## 🔄 Pull Requests

When opening a PR:

* Describe **what** you’re changing and **why**
* Reference any related issues (e.g., `Closes #42`)
* Assign appropriate reviewers (maintainers will help if you're unsure)
* Label your PR (e.g., `bug`, `feature`, `enhancement`)

---

## 🙌 Code Reviews

Expect constructive feedback. Reviews ensure code quality, maintainability, and consistency. Your changes may be approved with suggestions or requested revisions.

---

## 🧾 Licensing

All contributions to this project are covered under the [MIT License](LICENSE).

---

## 📬 Contact

For major proposals or discussions, email **[nestorabiawuh@gmail.com](mailto:nestorabiawuh@gmail.com)** or open a GitHub Discussion or Issue.

---

Thank you for helping build a robust SIX Bank Platform! 🚀

