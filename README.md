# Kata: Quick Git Commit Amendment

**Objective**: Learn to amend a commit to include additional changes in Git. This is a useful skill when you realize you forgot to include something small right after committing.

---

**Scenario**: You just made a commit and suddenly realized you forgot to add a small change, such as a comment, a minor fix, or a small piece of code. Instead of creating a new commit for this tiny change, you'd like to incorporate it into your last commit.

## Tasks:

1. Make your intended change in your code or files.
2. Stage the changes using `git add .` (to stage all changes) or `git add <filename>` (to stage a specific file).
3. Use `git commit --amend --no-edit` to add the change to your last commit without changing its commit message.
4. Verify the changes using `git log` and `git show HEAD`.

## Notes:

1. It's crucial to understand that after you have amended the commit, its SHA-1 will change. This means that if you've already pushed the commit to a remote repository, and then you amend it, you'll have diverged from what the remote knows about. Pushing again will require `--force` (or `-f`), but this can be dangerous as it will overwrite changes on the remote. Always coordinate with your team if you need to force push.
2. As a rule of thumb: **Never amend public commits**. Only amend commits that are still in your local repository and haven't been pushed to a shared/public repository.

## Challenges:

1. **Advanced logging**: Use `git log` to check the commit history. Can you customize the log output to only show the commit messages?
2. **Interactive staging**: Use `git add -i` to interactively stage your changes. This can be useful when you have multiple changes in different files but only want to include some of them in the commit.
3. **Customize amend**: Use `git commit --amend -m "New message"` but this time, edit the commit message. This is useful if you not only forgot some changes but also made a typo or forgot something in the commit message.

**Happy Coding!**
