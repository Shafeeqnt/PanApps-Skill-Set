---
name: {{SKILL_NAME}}
description: Use this for {{FRAMEWORK}} components, pages, hooks, forms, and frontend refactors that should follow Panapps coding standards and review checklist.
---

# Panapps {{FRAMEWORK_TITLE}} Standards

## What this skill does
This skill helps the agent create and review {{FRAMEWORK}} code using Panapps team conventions.

## When to use
Use this skill when:
- Building new {{FRAMEWORK}} components
- Refactoring existing {{FRAMEWORK}} code
- Reviewing pull requests
- Improving readability, reusability, and performance
- Checking folder structure and naming conventions

Do not use this skill for:
- Backend-only tasks
- Database schema design
- Infrastructure or DevOps work

## Inputs needed
- Feature requirement or ticket summary
- Existing file or component path
- Whether this is a new component or refactor
- Any design reference or API contract if available

## Panapps rules
- Prefer clear prop and variable names over short abbreviations
- Keep components small and reusable
- Move repeated UI into shared components
- Keep business logic out of JSX or templates where possible
- Use hooks/state management carefully; avoid unnecessary re-renders
- Use meaningful folder and file names
- Add loading, empty, and error states where needed
- Follow existing project styling conventions before introducing new patterns

## Procedure
1. Read the existing component or feature context.
2. Identify whether the task is create, refactor, fix, or review.
3. Apply Panapps standards for {{FRAMEWORK}}.
4. Suggest or implement improvements aligned with Panapps rules.
5. Verify the output matches project patterns and does not introduce unnecessary complexity.

## Validation
A task is complete when:
- Code is readable
- Naming is consistent
- Reusability is improved where appropriate
- Edge states are covered
- The solution follows the project’s current architecture

## Common failure modes
- Overcomplicating a simple component
- Introducing inconsistent naming
- Breaking existing styling or folder conventions
- Refactoring too aggressively without need
